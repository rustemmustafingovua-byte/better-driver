.class Lio/flutter/plugin/localization/LocalizationPlugin$1;
.super Ljava/lang/Object;
.source "LocalizationPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/localization/LocalizationPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/localization/LocalizationPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/localization/LocalizationPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/plugin/localization/LocalizationPlugin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStringResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "localeString"    # Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {v0}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "localContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 39
    .local v1, "stringToReturn":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 40
    invoke-static {p2}, Lio/flutter/plugin/localization/LocalizationPlugin;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 42
    .local v2, "locale":Ljava/util/Locale;
    new-instance v3, Landroid/content/res/Configuration;

    iget-object v4, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {v4}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 43
    .local v3, "config":Landroid/content/res/Configuration;
    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 44
    iget-object v4, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {v4}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 47
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "config":Landroid/content/res/Configuration;
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/localization/LocalizationPlugin$1;->this$0:Lio/flutter/plugin/localization/LocalizationPlugin;

    invoke-static {v2}, Lio/flutter/plugin/localization/LocalizationPlugin;->access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 49
    .local v3, "resId":I
    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_1
    return-object v1
.end method
