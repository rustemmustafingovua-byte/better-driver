.class public final Lio/flutter/plugins/sharedpreferences/MessagesAsync_gKt;
.super Ljava/lang/Object;
.source "MessagesAsync.g.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u001d\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "defaultInstanceName",
        "",
        "SharedPreferencesAsyncApiInstances",
        "",
        "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;",
        "getSharedPreferencesAsyncApiInstances",
        "()Ljava/util/Map;",
        "shared_preferences_android_debug"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final SharedPreferencesAsyncApiInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstanceName:Ljava/lang/String; = "PigeonDefaultClassName32uh4ui3lh445uh4h3l2l455g4y34u"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 299
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lio/flutter/plugins/sharedpreferences/MessagesAsync_gKt;->SharedPreferencesAsyncApiInstances:Ljava/util/Map;

    return-void
.end method

.method public static final getSharedPreferencesAsyncApiInstances()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/plugins/sharedpreferences/SharedPreferencesAsyncApiRegistrar;",
            ">;"
        }
    .end annotation

    .line 298
    sget-object v0, Lio/flutter/plugins/sharedpreferences/MessagesAsync_gKt;->SharedPreferencesAsyncApiInstances:Ljava/util/Map;

    return-object v0
.end method
