.class public final enum Lcom/abovevacant/epitaph/core/MemoryError$Type;
.super Ljava/lang/Enum;
.source "MemoryError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/abovevacant/epitaph/core/MemoryError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/abovevacant/epitaph/core/MemoryError$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/abovevacant/epitaph/core/MemoryError$Type;

.field public static final enum BUFFER_OVERFLOW:Lcom/abovevacant/epitaph/core/MemoryError$Type;

.field public static final enum BUFFER_UNDERFLOW:Lcom/abovevacant/epitaph/core/MemoryError$Type;

.field public static final enum DOUBLE_FREE:Lcom/abovevacant/epitaph/core/MemoryError$Type;

.field public static final enum INVALID_FREE:Lcom/abovevacant/epitaph/core/MemoryError$Type;

.field public static final enum UNKNOWN:Lcom/abovevacant/epitaph/core/MemoryError$Type;

.field public static final enum USE_AFTER_FREE:Lcom/abovevacant/epitaph/core/MemoryError$Type;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/abovevacant/epitaph/core/MemoryError$Type;
    .locals 6

    .line 32
    sget-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->UNKNOWN:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    sget-object v1, Lcom/abovevacant/epitaph/core/MemoryError$Type;->USE_AFTER_FREE:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    sget-object v2, Lcom/abovevacant/epitaph/core/MemoryError$Type;->DOUBLE_FREE:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    sget-object v3, Lcom/abovevacant/epitaph/core/MemoryError$Type;->INVALID_FREE:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    sget-object v4, Lcom/abovevacant/epitaph/core/MemoryError$Type;->BUFFER_OVERFLOW:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    sget-object v5, Lcom/abovevacant/epitaph/core/MemoryError$Type;->BUFFER_UNDERFLOW:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    filled-new-array/range {v0 .. v5}, [Lcom/abovevacant/epitaph/core/MemoryError$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/MemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->UNKNOWN:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    .line 34
    new-instance v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;

    const-string v1, "USE_AFTER_FREE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/MemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->USE_AFTER_FREE:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    .line 35
    new-instance v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;

    const-string v1, "DOUBLE_FREE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/MemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->DOUBLE_FREE:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    .line 36
    new-instance v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;

    const-string v1, "INVALID_FREE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/MemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->INVALID_FREE:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    .line 37
    new-instance v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;

    const-string v1, "BUFFER_OVERFLOW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/MemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->BUFFER_OVERFLOW:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    .line 38
    new-instance v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;

    const-string v1, "BUFFER_UNDERFLOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/abovevacant/epitaph/core/MemoryError$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->BUFFER_UNDERFLOW:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    .line 32
    invoke-static {}, Lcom/abovevacant/epitaph/core/MemoryError$Type;->$values()[Lcom/abovevacant/epitaph/core/MemoryError$Type;

    move-result-object v0

    sput-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->$VALUES:[Lcom/abovevacant/epitaph/core/MemoryError$Type;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->value:I

    .line 44
    return-void
.end method

.method public static fromValue(I)Lcom/abovevacant/epitaph/core/MemoryError$Type;
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

    .line 51
    invoke-static {}, Lcom/abovevacant/epitaph/core/MemoryError$Type;->values()[Lcom/abovevacant/epitaph/core/MemoryError$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 52
    .local v3, "type":Lcom/abovevacant/epitaph/core/MemoryError$Type;
    iget v4, v3, Lcom/abovevacant/epitaph/core/MemoryError$Type;->value:I

    if-ne v4, p0, :cond_0

    .line 53
    return-object v3

    .line 51
    .end local v3    # "type":Lcom/abovevacant/epitaph/core/MemoryError$Type;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    :cond_1
    sget-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->UNKNOWN:Lcom/abovevacant/epitaph/core/MemoryError$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/abovevacant/epitaph/core/MemoryError$Type;
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

    .line 32
    const-class v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;

    return-object v0
.end method

.method public static values()[Lcom/abovevacant/epitaph/core/MemoryError$Type;
    .locals 1

    .line 32
    sget-object v0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->$VALUES:[Lcom/abovevacant/epitaph/core/MemoryError$Type;

    invoke-virtual {v0}, [Lcom/abovevacant/epitaph/core/MemoryError$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/abovevacant/epitaph/core/MemoryError$Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/abovevacant/epitaph/core/MemoryError$Type;->value:I

    return v0
.end method
