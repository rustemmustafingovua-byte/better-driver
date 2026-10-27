.class public final enum Ldev/fluttercommunity/workmanager/pigeon/NetworkType;
.super Ljava/lang/Enum;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/NetworkType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/fluttercommunity/workmanager/pigeon/NetworkType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u0000 \u000e2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000eB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/NetworkType;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getRaw",
        "()I",
        "CONNECTED",
        "METERED",
        "NOT_REQUIRED",
        "NOT_ROAMING",
        "UNMETERED",
        "TEMPORARILY_UNMETERED",
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

.field private static final synthetic $VALUES:[Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

.field public static final enum CONNECTED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/NetworkType$Companion;

.field public static final enum METERED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

.field public static final enum NOT_REQUIRED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

.field public static final enum NOT_ROAMING:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

.field public static final enum TEMPORARILY_UNMETERED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

.field public static final enum UNMETERED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;


# instance fields
.field private final raw:I


# direct methods
.method private static final synthetic $values()[Ldev/fluttercommunity/workmanager/pigeon/NetworkType;
    .locals 6

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->CONNECTED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->METERED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->NOT_REQUIRED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    sget-object v3, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->NOT_ROAMING:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    sget-object v4, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->UNMETERED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    sget-object v5, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->TEMPORARILY_UNMETERED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    filled-new-array/range {v0 .. v5}, [Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 236
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    const-string v1, "CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->CONNECTED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    .line 238
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    const-string v1, "METERED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->METERED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    .line 240
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->NOT_REQUIRED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    .line 242
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    const-string v1, "NOT_ROAMING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->NOT_ROAMING:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    .line 244
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    const-string v1, "UNMETERED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->UNMETERED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    .line 251
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    const-string v1, "TEMPORARILY_UNMETERED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->TEMPORARILY_UNMETERED:Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    invoke-static {}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->$values()[Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/NetworkType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->Companion:Ldev/fluttercommunity/workmanager/pigeon/NetworkType$Companion;

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

    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->raw:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ldev/fluttercommunity/workmanager/pigeon/NetworkType;",
            ">;"
        }
    .end annotation

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/fluttercommunity/workmanager/pigeon/NetworkType;
    .locals 1

    const-class v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    return-object v0
.end method

.method public static values()[Ldev/fluttercommunity/workmanager/pigeon/NetworkType;
    .locals 1

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/fluttercommunity/workmanager/pigeon/NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    .line 234
    iget v0, p0, Ldev/fluttercommunity/workmanager/pigeon/NetworkType;->raw:I

    return v0
.end method
