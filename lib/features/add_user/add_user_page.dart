import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/di/di_instance.dart';
import '../../product/common/validators.dart';
import '../../product/theme/common_styles.dart';
import '../../product/widgets/app_checkbox.dart';
import '../../product/widgets/app_input.dart';
import '../user_list/bloc/user_list_bloc.dart';
import '../user_list/models/user_model.dart';
import 'bloc/add_user_bloc.dart';

@RoutePage()
class AddUserPage extends StatelessWidget {
  const AddUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddUserBloc>(),
      child: const AddUserListBuilder(),
    );
  }
}

class AddUserListBuilder extends StatefulWidget {
  const AddUserListBuilder({super.key});

  @override
  State<AddUserListBuilder> createState() => _AddUserListBuilderState();
}

class _AddUserListBuilderState extends State<AddUserListBuilder> {
  late AddUserBloc addUserBloc;

  @override
  void initState() {
    super.initState();

    addUserBloc = BlocProvider.of<AddUserBloc>(context);
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isMale = false;

  void genderCheck({required bool v}) {
    setState(() {
      isMale = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User add '),
      ),
      body: BlocConsumer<AddUserBloc, AddUserState>(
        listener: (context, state) {
          if (state.status == EnumAddUserStatus.success) {
            context.maybePop();

            context.read<UserListBloc>().add(GetUserListEvent());
          }
        },
        builder: (context, state) {
          return Padding(
            padding: AppCommonStyles.paddingNormal,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          AppInputField(
                            controller: _nameController,
                            label: 'Name',
                            validator: validateRequiredInput,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          AppInputField(
                            controller: _ageController,
                            label: 'Age',
                            keyboardType: TextInputType.number,
                            validator: validateRequiredInput,
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          AppCheckBox(
                            value: isMale,
                            title: 'Are you male?',
                            onChanged: (v) => genderCheck(v: v ?? false),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            if (!(_formKey.currentState?.validate() ?? false)) {
                              return;
                            }
                            final user = UserModel(
                              name: _nameController.text.trim(),
                              id: UniqueKey().toString(),
                              age: _ageController.text.trim(),
                              isMale: isMale,
                            );

                            addUserBloc.add(AddUserEvent.addUser(user: user));
                          },
                          child: const Text(
                            'Save',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
