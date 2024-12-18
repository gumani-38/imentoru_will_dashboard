<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInita6a504b9a620110a6cd0d3728267a968
{
    public static $prefixLengthsPsr4 = array (
        'M' => 
        array (
            'Moila\\ImentoruDashboard\\' => 24,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Moila\\ImentoruDashboard\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInita6a504b9a620110a6cd0d3728267a968::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInita6a504b9a620110a6cd0d3728267a968::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInita6a504b9a620110a6cd0d3728267a968::$classMap;

        }, null, ClassLoader::class);
    }
}
