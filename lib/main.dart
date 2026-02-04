import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:new_spotifyapp/core/config/theme/app_theme.dart';
import 'package:new_spotifyapp/presentation/authentication/login.dart';
import 'package:new_spotifyapp/presentation/authentication/register_signin.dart';
import 'package:new_spotifyapp/presentation/authentication/sign_up.dart';
import 'package:new_spotifyapp/presentation/onboarding/bloc/theme_cubit.dart';
import 'package:new_spotifyapp/presentation/onboarding/choose_mode.dart';
import 'package:new_spotifyapp/presentation/onboarding/get_started.dart';
import 'package:new_spotifyapp/presentation/onboarding/splash.dart';
import 'package:new_spotifyapp/presentation/pages/home_page.dart';
import 'package:new_spotifyapp/presentation/pages/lyrics_page.dart';
import 'package:new_spotifyapp/presentation/pages/music_page.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory:
        kIsWeb
            ? HydratedStorageDirectory.web
            : HydratedStorageDirectory((await getTemporaryDirectory()).path),
  );
  runApp(const NewSpotifyApp());
}

class NewSpotifyApp extends StatefulWidget {
  const NewSpotifyApp({super.key});

  @override
  State<NewSpotifyApp> createState() => _NewSpotifyAppState();
}

class _NewSpotifyAppState extends State<NewSpotifyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ThemeCubit())],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder:
            (context, mode) => MaterialApp(
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: mode,
              debugShowCheckedModeBanner: false,
              home: Splash(),
              routes: {
                'choosemode': (context) {
                  return const ChooseMode();
                },
                'registerSignin': (context){
                  return const RegisterSignin();
                },
                'login': (context) {
                  return const Login();
                },
                'signup': (context) {
                  return const SignUp();
                },
                'homepage': (context) {
                  return const HomePage();
                },
                'musicpage' : (context){
                  return const MusicPage();
                },
                'lyricspage' : (context){
                  return const LyricsPage();
                }
              },
            ),
      ),
    );
  }
}
