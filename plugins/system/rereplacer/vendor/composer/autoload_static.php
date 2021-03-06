<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitef51978b4df878488eaee2db48ecb99f
{
	public static $prefixLengthsPsr4 = [
		'R' =>
			[
				'RegularLabs\\Plugin\\System\\ReReplacer\\' => 37,
			],
	];

	public static $prefixDirsPsr4 = [
		'RegularLabs\\Plugin\\System\\ReReplacer\\' =>
			[
				0 => __DIR__ . '/../..' . '/src',
			],
	];

	public static function getInitializer(ClassLoader $loader)
	{
		return \Closure::bind(function () use ($loader) {
			$loader->prefixLengthsPsr4 = ComposerStaticInitef51978b4df878488eaee2db48ecb99f::$prefixLengthsPsr4;
			$loader->prefixDirsPsr4    = ComposerStaticInitef51978b4df878488eaee2db48ecb99f::$prefixDirsPsr4;
		}, null, ClassLoader::class);
	}
}
