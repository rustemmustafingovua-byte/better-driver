.class public final synthetic Ldev/fluttercommunity/workmanager/LoggingDebugHandler$WhenMappings;
.super Ljava/lang/Object;
.source "LoggingDebugHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/fluttercommunity/workmanager/LoggingDebugHandler;
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

    invoke-static {}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->values()[Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->SCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-virtual {v1}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->STARTED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-virtual {v1}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->COMPLETED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-virtual {v1}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->FAILED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-virtual {v1}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    :try_start_4
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->CANCELLED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-virtual {v1}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v1

    :goto_4
    :try_start_5
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->RETRYING:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-virtual {v1}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v1

    :goto_5
    :try_start_6
    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->RESCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-virtual {v1}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    sput-object v0, Ldev/fluttercommunity/workmanager/LoggingDebugHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
