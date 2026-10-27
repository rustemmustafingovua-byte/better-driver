.class Lio/flutter/embedding/engine/FlutterEngineFlags$1;
.super Ljava/util/HashMap;
.source "FlutterEngineFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/FlutterEngineFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;",
        "Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 485
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 487
    sget-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    sget-object v1, Lio/flutter/embedding/engine/FlutterEngineFlags;->AOT_SHARED_LIBRARY_NAME:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    invoke-virtual {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterEngineFlags$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lio/flutter/embedding/engine/FlutterEngineFlags;->DEPRECATED_FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    sget-object v1, Lio/flutter/embedding/engine/FlutterEngineFlags;->FLUTTER_ASSETS_DIR:Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;

    invoke-virtual {p0, v0, v1}, Lio/flutter/embedding/engine/FlutterEngineFlags$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    return-void
.end method
