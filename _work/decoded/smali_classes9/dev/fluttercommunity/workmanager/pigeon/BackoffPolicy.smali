.class public final enum Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;
.super Ljava/lang/Enum;
.source "WorkmanagerApi.g.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;",
        "",
        "raw",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getRaw",
        "()I",
        "EXPONENTIAL",
        "LINEAR",
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

.field private static final synthetic $VALUES:[Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

.field public static final Companion:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy$Companion;

.field public static final enum EXPONENTIAL:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

.field public static final enum LINEAR:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;


# instance fields
.field private final raw:I


# direct methods
.method private static final synthetic $values()[Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;
    .locals 2

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->EXPONENTIAL:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    sget-object v1, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->LINEAR:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    filled-new-array {v0, v1}, [Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 267
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    const-string v1, "EXPONENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->EXPONENTIAL:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    .line 269
    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    const-string v1, "LINEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->LINEAR:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    invoke-static {}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->$values()[Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->Companion:Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy$Companion;

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

    .line 265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->raw:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;",
            ">;"
        }
    .end annotation

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;
    .locals 1

    const-class v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    return-object v0
.end method

.method public static values()[Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;
    .locals 1

    sget-object v0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->$VALUES:[Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;

    return-object v0
.end method


# virtual methods
.method public final getRaw()I
    .locals 1

    .line 265
    iget v0, p0, Ldev/fluttercommunity/workmanager/pigeon/BackoffPolicy;->raw:I

    return v0
.end method
