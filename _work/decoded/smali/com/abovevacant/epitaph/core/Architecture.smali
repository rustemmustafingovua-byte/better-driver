.class public final enum Lcom/abovevacant/epitaph/core/Architecture;
.super Ljava/lang/Enum;
.source "Architecture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/abovevacant/epitaph/core/Architecture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/abovevacant/epitaph/core/Architecture;

.field public static final enum ARM32:Lcom/abovevacant/epitaph/core/Architecture;

.field public static final enum ARM64:Lcom/abovevacant/epitaph/core/Architecture;

.field public static final enum NONE:Lcom/abovevacant/epitaph/core/Architecture;

.field public static final enum RISCV64:Lcom/abovevacant/epitaph/core/Architecture;

.field public static final enum X86:Lcom/abovevacant/epitaph/core/Architecture;

.field public static final enum X86_64:Lcom/abovevacant/epitaph/core/Architecture;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/abovevacant/epitaph/core/Architecture;
    .locals 6

    .line 4
    sget-object v0, Lcom/abovevacant/epitaph/core/Architecture;->ARM32:Lcom/abovevacant/epitaph/core/Architecture;

    sget-object v1, Lcom/abovevacant/epitaph/core/Architecture;->ARM64:Lcom/abovevacant/epitaph/core/Architecture;

    sget-object v2, Lcom/abovevacant/epitaph/core/Architecture;->X86:Lcom/abovevacant/epitaph/core/Architecture;

    sget-object v3, Lcom/abovevacant/epitaph/core/Architecture;->X86_64:Lcom/abovevacant/epitaph/core/Architecture;

    sget-object v4, Lcom/abovevacant/epitaph/core/Architecture;->RISCV64:Lcom/abovevacant/epitaph/core/Architecture;

    sget-object v5, Lcom/abovevacant/epitaph/core/Architecture;->NONE:Lcom/abovevacant/epitaph/core/Architecture;

    filled-new-array/range {v0 .. v5}, [Lcom/abovevacant/epitaph/core/Architecture;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcom/abovevacant/epitaph/core/Architecture;

    const-string v1, "ARM32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/Architecture;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/Architecture;->ARM32:Lcom/abovevacant/epitaph/core/Architecture;

    .line 6
    new-instance v0, Lcom/abovevacant/epitaph/core/Architecture;

    const-string v1, "ARM64"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/Architecture;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/Architecture;->ARM64:Lcom/abovevacant/epitaph/core/Architecture;

    .line 7
    new-instance v0, Lcom/abovevacant/epitaph/core/Architecture;

    const-string v1, "X86"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/Architecture;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/Architecture;->X86:Lcom/abovevacant/epitaph/core/Architecture;

    .line 8
    new-instance v0, Lcom/abovevacant/epitaph/core/Architecture;

    const-string v1, "X86_64"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/Architecture;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/Architecture;->X86_64:Lcom/abovevacant/epitaph/core/Architecture;

    .line 9
    new-instance v0, Lcom/abovevacant/epitaph/core/Architecture;

    const-string v1, "RISCV64"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/Architecture;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/Architecture;->RISCV64:Lcom/abovevacant/epitaph/core/Architecture;

    .line 10
    new-instance v0, Lcom/abovevacant/epitaph/core/Architecture;

    const-string v1, "NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/Architecture;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/Architecture;->NONE:Lcom/abovevacant/epitaph/core/Architecture;

    .line 4
    invoke-static {}, Lcom/abovevacant/epitaph/core/Architecture;->$values()[Lcom/abovevacant/epitaph/core/Architecture;

    move-result-object v0

    sput-object v0, Lcom/abovevacant/epitaph/core/Architecture;->$VALUES:[Lcom/abovevacant/epitaph/core/Architecture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/abovevacant/epitaph/core/Architecture;->value:I

    .line 16
    return-void
.end method

.method public static fromValue(I)Lcom/abovevacant/epitaph/core/Architecture;
    .locals 5
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 23
    invoke-static {}, Lcom/abovevacant/epitaph/core/Architecture;->values()[Lcom/abovevacant/epitaph/core/Architecture;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 24
    .local v3, "arch":Lcom/abovevacant/epitaph/core/Architecture;
    iget v4, v3, Lcom/abovevacant/epitaph/core/Architecture;->value:I

    if-ne v4, p0, :cond_0

    .line 25
    return-object v3

    .line 23
    .end local v3    # "arch":Lcom/abovevacant/epitaph/core/Architecture;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lcom/abovevacant/epitaph/core/Architecture;->NONE:Lcom/abovevacant/epitaph/core/Architecture;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/abovevacant/epitaph/core/Architecture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 4
    const-class v0, Lcom/abovevacant/epitaph/core/Architecture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/abovevacant/epitaph/core/Architecture;

    return-object v0
.end method

.method public static values()[Lcom/abovevacant/epitaph/core/Architecture;
    .locals 1

    .line 4
    sget-object v0, Lcom/abovevacant/epitaph/core/Architecture;->$VALUES:[Lcom/abovevacant/epitaph/core/Architecture;

    invoke-virtual {v0}, [Lcom/abovevacant/epitaph/core/Architecture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/abovevacant/epitaph/core/Architecture;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/abovevacant/epitaph/core/Architecture;->value:I

    return v0
.end method
