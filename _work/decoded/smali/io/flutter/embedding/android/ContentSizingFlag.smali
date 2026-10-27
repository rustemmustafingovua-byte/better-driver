.class Lio/flutter/embedding/android/ContentSizingFlag;
.super Ljava/lang/Object;
.source "ContentSizingFlag.java"


# static fields
.field private static final DEFAULT:Z = false

.field private static final ENABLE_CONTENT_SIZING:Ljava/lang/String; = "io.flutter.embedding.android.EnableContentSizing"

.field private static final TAG:Ljava/lang/String; = "ContentSizingFlag"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "appContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 29
    .local v1, "metaData":Landroid/os/Bundle;
    nop

    .line 31
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 33
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 36
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 34
    :catch_0
    move-exception v2

    .line 35
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ContentSizingFlag"

    const-string v4, "Could not get metadata"

    invoke-static {v3, v4, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "io.flutter.embedding.android.EnableContentSizing"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    :cond_0
    return v2
.end method
