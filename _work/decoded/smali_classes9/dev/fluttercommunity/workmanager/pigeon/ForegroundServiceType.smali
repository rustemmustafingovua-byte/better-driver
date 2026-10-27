.class public final enum Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;
.super Ljava/lang/Enum;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getRaw",
        "()I",
        "DATA_SYNC",
        "SHORT_SERVICE",
        "Companion",
        "workmanager_android_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType$Companion;

.field public static final enum DATA_SYNC:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

.field public static final enum SHORT_SERVICE:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;


# instance fields
.field private final raw:I


# direct methods
.method private static final synthetic $values()[Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;
    .locals 2

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->DATA_SYNC:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->SHORT_SERVICE:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    filled-new-array {v0, v1}, [Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 419
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    const-string v1, "DATA_SYNC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->DATA_SYNC:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    .line 424
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    const-string v1, "SHORT_SERVICE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->SHORT_SERVICE:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    invoke-static {}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->$values()[Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "raw"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->raw:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;",
            ">;"
        }
    .end annotation

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;
    .locals 1

    const-class v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    return-object v0
.end method

.method public static values()[Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;
    .locals 1

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;

    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    .line 414
    iget v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ForegroundServiceType;->raw:I

    return v0
.end method
