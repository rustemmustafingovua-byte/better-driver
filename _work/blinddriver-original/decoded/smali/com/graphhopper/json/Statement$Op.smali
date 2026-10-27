.class public final enum Lcom/graphhopper/json/Statement$Op;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/json/Statement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/graphhopper/json/Statement$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/graphhopper/json/Statement$Op;

.field public static final enum ADD:Lcom/graphhopper/json/Statement$Op;

.field public static final enum DO:Lcom/graphhopper/json/Statement$Op;

.field public static final enum LIMIT:Lcom/graphhopper/json/Statement$Op;

.field public static final enum MULTIPLY:Lcom/graphhopper/json/Statement$Op;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/graphhopper/json/Statement$Op;
    .locals 4

    sget-object v0, Lcom/graphhopper/json/Statement$Op;->MULTIPLY:Lcom/graphhopper/json/Statement$Op;

    sget-object v1, Lcom/graphhopper/json/Statement$Op;->LIMIT:Lcom/graphhopper/json/Statement$Op;

    sget-object v2, Lcom/graphhopper/json/Statement$Op;->DO:Lcom/graphhopper/json/Statement$Op;

    sget-object v3, Lcom/graphhopper/json/Statement$Op;->ADD:Lcom/graphhopper/json/Statement$Op;

    filled-new-array {v0, v1, v2, v3}, [Lcom/graphhopper/json/Statement$Op;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/graphhopper/json/Statement$Op;

    const/4 v1, 0x0

    const-string v2, "multiply_by"

    const-string v3, "MULTIPLY"

    invoke-direct {v0, v3, v1, v2}, Lcom/graphhopper/json/Statement$Op;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/graphhopper/json/Statement$Op;->MULTIPLY:Lcom/graphhopper/json/Statement$Op;

    new-instance v0, Lcom/graphhopper/json/Statement$Op;

    const/4 v1, 0x1

    const-string v2, "limit_to"

    const-string v3, "LIMIT"

    invoke-direct {v0, v3, v1, v2}, Lcom/graphhopper/json/Statement$Op;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/graphhopper/json/Statement$Op;->LIMIT:Lcom/graphhopper/json/Statement$Op;

    new-instance v0, Lcom/graphhopper/json/Statement$Op;

    const/4 v1, 0x2

    const-string v2, "do"

    const-string v3, "DO"

    invoke-direct {v0, v3, v1, v2}, Lcom/graphhopper/json/Statement$Op;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/graphhopper/json/Statement$Op;->DO:Lcom/graphhopper/json/Statement$Op;

    new-instance v0, Lcom/graphhopper/json/Statement$Op;

    const/4 v1, 0x3

    const-string v2, "add"

    const-string v3, "ADD"

    invoke-direct {v0, v3, v1, v2}, Lcom/graphhopper/json/Statement$Op;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/graphhopper/json/Statement$Op;->ADD:Lcom/graphhopper/json/Statement$Op;

    invoke-static {}, Lcom/graphhopper/json/Statement$Op;->$values()[Lcom/graphhopper/json/Statement$Op;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/json/Statement$Op;->$VALUES:[Lcom/graphhopper/json/Statement$Op;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/graphhopper/json/Statement$Op;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/graphhopper/json/Statement$Op;
    .locals 1

    const-class v0, Lcom/graphhopper/json/Statement$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/graphhopper/json/Statement$Op;

    return-object p0
.end method

.method public static values()[Lcom/graphhopper/json/Statement$Op;
    .locals 1

    sget-object v0, Lcom/graphhopper/json/Statement$Op;->$VALUES:[Lcom/graphhopper/json/Statement$Op;

    invoke-virtual {v0}, [Lcom/graphhopper/json/Statement$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/graphhopper/json/Statement$Op;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/graphhopper/json/MinMax;Lcom/graphhopper/json/MinMax;)Lcom/graphhopper/json/MinMax;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/graphhopper/json/MinMax;

    iget-wide v0, p1, Lcom/graphhopper/json/MinMax;->min:D

    iget-wide v2, p2, Lcom/graphhopper/json/MinMax;->min:D

    add-double/2addr v0, v2

    iget-wide v2, p1, Lcom/graphhopper/json/MinMax;->max:D

    iget-wide p1, p2, Lcom/graphhopper/json/MinMax;->max:D

    add-double/2addr v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/graphhopper/json/MinMax;-><init>(DD)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lcom/graphhopper/json/MinMax;

    iget-wide v0, p1, Lcom/graphhopper/json/MinMax;->min:D

    iget-wide v2, p2, Lcom/graphhopper/json/MinMax;->min:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/graphhopper/json/MinMax;->max:D

    iget-wide p1, p2, Lcom/graphhopper/json/MinMax;->max:D

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/graphhopper/json/MinMax;-><init>(DD)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/graphhopper/json/MinMax;

    iget-wide v0, p1, Lcom/graphhopper/json/MinMax;->min:D

    iget-wide v2, p2, Lcom/graphhopper/json/MinMax;->min:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Lcom/graphhopper/json/MinMax;->max:D

    iget-wide p1, p2, Lcom/graphhopper/json/MinMax;->max:D

    mul-double/2addr v2, p1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/graphhopper/json/MinMax;-><init>(DD)V

    return-object p0
.end method

.method public build(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const-string p0, "Infinity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "Double.POSITIVE_INFINITY"

    :cond_0
    const-string p0, "value += "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    const-string p0, "value = Math.min(value,"

    const-string v0, ")"

    invoke-static {p0, p1, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "value *= "

    invoke-static {p0, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/json/Statement$Op;->name:Ljava/lang/String;

    return-object p0
.end method
