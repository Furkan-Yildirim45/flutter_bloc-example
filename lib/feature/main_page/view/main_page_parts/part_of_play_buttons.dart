part of"../main_page.dart";

class _PlayButtons extends StatelessWidget {
  const _PlayButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
            onTap: () {},
            height: 40,
            width: 40,
            borderRadius: BorderRadius.circular(20),
            child: const Icon(
              Icons.skip_previous_outlined,
              size: 40,
            )),
        BlocBuilder<MainPageCubit, MainPageState>(
          builder: (context, state) {
            return CustomButton(
                onTap: () async {
                  context.read<MainPageCubit>().startCounting();
                },
                borderRadius: BorderRadius.circular(35),
                width: 70,
                height: 70,
                child: Icon(
                  state.isPlay ? Icons.pause_circle_filled_outlined : Icons.play_circle_fill_outlined,
                  size: 70,
                ));
          },
        ),
        CustomButton(
          onTap: () {},
          width: 40,
          height: 40,
          borderRadius: BorderRadius.circular(20),
          child: const Icon(Icons.skip_next_outlined, size: 40,),
        ),
      ],
    );
  }
}
