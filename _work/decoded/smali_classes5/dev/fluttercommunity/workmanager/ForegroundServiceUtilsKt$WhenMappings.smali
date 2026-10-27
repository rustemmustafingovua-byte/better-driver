.class public final synthetic Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt$WhenMappings;
.super Ljava/lang/Object;
.source "ForegroundServiceUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->values()[Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->SHORT_SERVICE:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    invoke-virtual {v1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    sput-object v0, Ldev/fluttercommunity/workmanager/ForegroundServiceUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
