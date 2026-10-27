.class public final enum Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;
.super Ljava/lang/Enum;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/TaskStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000fB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getRaw",
        "()I",
        "SCHEDULED",
        "STARTED",
        "COMPLETED",
        "FAILED",
        "CANCELLED",
        "RETRYING",
        "RESCHEDULED",
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

.field private static final synthetic $VALUES:[Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

.field public static final enum CANCELLED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

.field public static final enum COMPLETED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus$Companion;

.field public static final enum FAILED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

.field public static final enum RESCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

.field public static final enum RETRYING:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

.field public static final enum SCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

.field public static final enum STARTED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;


# instance fields
.field private final raw:I


# direct methods
.method private static final synthetic $values()[Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;
    .locals 7

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->SCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->STARTED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->COMPLETED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->FAILED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    sget-object v4, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->CANCELLED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    sget-object v5, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->RETRYING:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    sget-object v6, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->RESCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    filled-new-array/range {v0 .. v6}, [Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 204
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    const-string v1, "SCHEDULED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->SCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    .line 206
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    const-string v1, "STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->STARTED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    .line 208
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    const-string v1, "COMPLETED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->COMPLETED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    .line 210
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    const-string v1, "FAILED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->FAILED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    .line 212
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    const-string v1, "CANCELLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->CANCELLED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    .line 214
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    const-string v1, "RETRYING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->RETRYING:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    .line 216
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    const-string v1, "RESCHEDULED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->RESCHEDULED:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-static {}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->$values()[Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->Companion:Ldev/fluttercommunity/workmanager/pigeon/TaskStatus$Companion;

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

    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->raw:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;
    .locals 1

    const-class v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    return-object v0
.end method

.method public static values()[Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;
    .locals 1

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;

    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    .line 202
    iget v0, p0, Ldev/fluttercommunity/workmanager/pigeon/TaskStatus;->raw:I

    return v0
.end method
