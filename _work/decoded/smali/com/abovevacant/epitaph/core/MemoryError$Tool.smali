.class public final enum Lcom/abovevacant/epitaph/core/MemoryError$Tool;
.super Ljava/lang/Enum;
.source "MemoryError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abovevacant/epitaph/core/MemoryError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/abovevacant/epitaph/core/MemoryError$Tool;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/abovevacant/epitaph/core/MemoryError$Tool;

.field public static final enum GWP_ASAN:Lcom/abovevacant/epitaph/core/MemoryError$Tool;

.field public static final enum SCUDO:Lcom/abovevacant/epitaph/core/MemoryError$Tool;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/abovevacant/epitaph/core/MemoryError$Tool;
    .locals 2

    .line 7
    sget-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->GWP_ASAN:Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    sget-object v1, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->SCUDO:Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    filled-new-array {v0, v1}, [Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    const-string v1, "GWP_ASAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/MemoryError$Tool;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->GWP_ASAN:Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 9
    new-instance v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    const-string v1, "SCUDO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/MemoryError$Tool;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->SCUDO:Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    .line 7
    invoke-static {}, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->$values()[Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    move-result-object v0

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->$VALUES:[Lcom/abovevacant/epitaph/core/MemoryError$Tool;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->value:I

    .line 15
    return-void
.end method

.method public static fromValue(I)Lcom/abovevacant/epitaph/core/MemoryError$Tool;
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

    .line 22
    invoke-static {}, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->values()[Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 23
    .local v3, "tool":Lcom/abovevacant/epitaph/core/MemoryError$Tool;
    iget v4, v3, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->value:I

    if-ne v4, p0, :cond_0

    .line 24
    return-object v3

    .line 22
    .end local v3    # "tool":Lcom/abovevacant/epitaph/core/MemoryError$Tool;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->GWP_ASAN:Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/abovevacant/epitaph/core/MemoryError$Tool;
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

    .line 7
    const-class v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    return-object v0
.end method

.method public static values()[Lcom/abovevacant/epitaph/core/MemoryError$Tool;
    .locals 1

    .line 7
    sget-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->$VALUES:[Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    invoke-virtual {v0}, [Lcom/abovevacant/epitaph/core/MemoryError$Tool;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/abovevacant/epitaph/core/MemoryError$Tool;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/abovevacant/epitaph/core/MemoryError$Tool;->value:I

    return v0
.end method
