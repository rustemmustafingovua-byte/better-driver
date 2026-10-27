.class Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;
.super Ljava/lang/RuntimeException;
.source "FlutterLocalNotificationsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginException"
.end annotation


# instance fields
.field public final code:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 2257
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2258
    iput-object p1, p0, Lcom/dexterous/flutterlocalnotifications/FlutterLocalNotificationsPlugin$PluginException;->code:Ljava/lang/String;

    .line 2259
    return-void
.end method
