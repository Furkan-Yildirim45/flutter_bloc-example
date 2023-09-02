part of"../main_page.dart";

class AdvancingBar extends StatelessWidget {
  const AdvancingBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var maxWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        color: Colors.white24,
        width: maxWidth,
        height: 5,
        child: Stack(
          children: [
            BlocBuilder<MainPageCubit, MainPageState>(
              builder: (context, state) {
                return FractionallySizedBox(
                  alignment: Alignment.centerLeft,
                  widthFactor: context.read<MainPageCubit>().changingSliderWidth(context) / maxWidth,
                  child: Container(
                    height: 5,
                    color: Colors.white,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

