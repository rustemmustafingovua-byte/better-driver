.class public final Lha/l1;
.super Lha/t0;
.source "SourceFile"


# static fields
.field public static final c:Lha/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha/l1;

    sget-object v1, Lha/m1;->a:Lha/m1;

    invoke-direct {v0, v1}, Lha/t0;-><init>(Lkotlinx/serialization/KSerializer;)V

    sput-object v0, Lha/l1;->c:Lha/l1;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lt8/y;

    iget-object p0, p1, Lt8/y;->l:[S

    const-string p1, "$this$collectionSize"

    invoke-static {p0, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    return p0
.end method

.method public final f(Lga/a;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lha/k1;

    const-string v0, "builder"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lha/t0;->b:Lha/s0;

    invoke-interface {p1, p0, p2}, Lga/a;->j(Lha/s0;I)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->y()S

    move-result p0

    invoke-static {p3}, Lha/r0;->c(Lha/r0;)V

    iget-object p1, p3, Lha/k1;->a:[S

    iget p2, p3, Lha/k1;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p3, Lha/k1;->b:I

    aput-short p0, p1, p2

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt8/y;

    iget-object p0, p1, Lt8/y;->l:[S

    const-string p1, "$this$toBuilder"

    invoke-static {p0, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lha/k1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lha/k1;->a:[S

    array-length p0, p0

    iput p0, p1, Lha/k1;->b:I

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Lha/k1;->b(I)V

    return-object p1
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [S

    new-instance v0, Lt8/y;

    invoke-direct {v0, p0}, Lt8/y;-><init>([S)V

    return-object v0
.end method

.method public final k(Lja/q;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, Lt8/y;

    iget-object p2, p2, Lt8/y;->l:[S

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lha/t0;->b:Lha/s0;

    invoke-virtual {p1, v1, v0}, Lja/q;->r(Lha/s0;I)Lkotlinx/serialization/encoding/Encoder;

    move-result-object v1

    aget-short v2, p2, v0

    invoke-interface {v1, v2}, Lkotlinx/serialization/encoding/Encoder;->d(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
