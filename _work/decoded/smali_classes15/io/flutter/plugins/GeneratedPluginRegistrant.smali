.class public final Lio/flutter/plugins/GeneratedPluginRegistrant;
.super Ljava/lang/Object;
.source "GeneratedPluginRegistrant.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneratedPluginRegistrant"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerWith(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 3
    .param p0, "flutterEngine"    # Lio/flutter/embedding/engine/FlutterEngine;

    .line 19
    const-string v0, "GeneratedPluginRegistrant"

    :try_start_0
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;

    invoke-direct {v2}, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin flutter_local_notifications, com.dexterous.flutterlocalnotifications.FlutterLocalNotificationsPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;

    invoke-direct {v2}, Lcom/tundralabs/fluttertts/FlutterTtsPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    goto :goto_1

    .line 25
    :catch_1
    move-exception v1

    .line 26
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin flutter_tts, com.tundralabs.fluttertts.FlutterTtsPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Lcom/baseflow/geolocator/GeolocatorPlugin;

    invoke-direct {v2}, Lcom/baseflow/geolocator/GeolocatorPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 32
    goto :goto_2

    .line 30
    :catch_2
    move-exception v1

    .line 31
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin geolocator_android, com.baseflow.geolocator.GeolocatorPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Lcom/github/dart_lang/jni/JniPlugin;

    invoke-direct {v2}, Lcom/github/dart_lang/jni/JniPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 37
    goto :goto_3

    .line 35
    :catch_3
    move-exception v1

    .line 36
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin jni, com.github.dart_lang.jni.JniPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;

    invoke-direct {v2}, Lcom/github/dart_lang/jni_flutter/JniFlutterPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 42
    goto :goto_4

    .line 40
    :catch_4
    move-exception v1

    .line 41
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin jni_flutter, com.github.dart_lang.jni_flutter.JniFlutterPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;

    invoke-direct {v2}, Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 47
    goto :goto_5

    .line 45
    :catch_5
    move-exception v1

    .line 46
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin package_info_plus, dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;

    invoke-direct {v2}, Ldev/fluttercommunity/plus/sensors/SensorsPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 52
    goto :goto_6

    .line 50
    :catch_6
    move-exception v1

    .line 51
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin sensors_plus, dev.fluttercommunity.plus.sensors.SensorsPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Lio/sentry/flutter/SentryFlutterPlugin;

    invoke-direct {v2}, Lio/sentry/flutter/SentryFlutterPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 57
    goto :goto_7

    .line 55
    :catch_7
    move-exception v1

    .line 56
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin sentry_flutter, io.sentry.flutter.SentryFlutterPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;

    invoke-direct {v2}, Lio/flutter/plugins/sharedpreferences/SharedPreferencesPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 62
    goto :goto_8

    .line 60
    :catch_8
    move-exception v1

    .line 61
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin shared_preferences_android, io.flutter.plugins.sharedpreferences.SharedPreferencesPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_9
    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterEngine;->getPlugins()Lio/flutter/embedding/engine/plugins/PluginRegistry;

    move-result-object v1

    new-instance v2, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;

    invoke-direct {v2}, Ldev/fluttercommunity/workmanager/WorkmanagerPlugin;-><init>()V

    invoke-interface {v1, v2}, Lio/flutter/embedding/engine/plugins/PluginRegistry;->add(Lio/flutter/embedding/engine/plugins/FlutterPlugin;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 67
    goto :goto_9

    .line 65
    :catch_9
    move-exception v1

    .line 66
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v2, "Error registering plugin workmanager_android, dev.fluttercommunity.workmanager.WorkmanagerPlugin"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9
    return-void
.end method
