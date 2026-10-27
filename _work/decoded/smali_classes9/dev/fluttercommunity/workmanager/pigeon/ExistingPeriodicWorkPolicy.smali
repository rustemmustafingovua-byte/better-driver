.class public final enum Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;
.super Ljava/lang/Enum;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getRaw",
        "()I",
        "KEEP",
        "REPLACE",
        "UPDATE",
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

.field private static final synthetic $VALUES:[Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy$Companion;

.field public static final enum KEEP:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

.field public static final enum REPLACE:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

.field public static final enum UPDATE:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;


# instance fields
.field private final raw:I


# direct methods
.method private static final synthetic $values()[Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;
    .locals 3

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->KEEP:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->REPLACE:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    sget-object v2, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->UPDATE:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    filled-new-array {v0, v1, v2}, [Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 330
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    const-string v1, "KEEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->KEEP:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    .line 337
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    const-string v1, "REPLACE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->REPLACE:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    .line 346
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    const-string v1, "UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->UPDATE:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    invoke-static {}, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->$values()[Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->Companion:Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy$Companion;

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

    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->raw:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;
    .locals 1

    const-class v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    return-object v0
.end method

.method public static values()[Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;
    .locals 1

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;

    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    .line 320
    iget v0, p0, Ldev/fluttercommunity/workmanager/pigeon/ExistingPeriodicWorkPolicy;->raw:I

    return v0
.end method
