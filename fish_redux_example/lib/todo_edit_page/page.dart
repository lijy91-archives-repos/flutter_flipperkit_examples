import 'package:fish_redux/fish_redux.dart';
import 'package:flipperkit_fish_redux_middleware/flipperkit_fish_redux_middleware.dart';

import '../todo_list_page/todo_component/component.dart';
import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TodoEditPage extends Page<TodoEditState, ToDoState> {
  TodoEditPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          middleware: <Middleware<TodoEditState>>[
            logMiddleware(tag: 'TodoEditPage'),
            flipperKitFishReduxMiddleware(),
          ],
        );
}
