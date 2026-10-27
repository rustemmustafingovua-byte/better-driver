.class public final Lha/i1;
.super Lha/t0;
.source "SourceFile"


# static fields
.field public static final c:Lha/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha/i1;

    sget-object v1, Lha/j1;->a:Lha/j1;

    invoke-direct {v0, v1}, Lha/t0;-><init>(Lkotlinx/serialization/KSerializer;)V

    sput-object v0, Lha/i1;->c:Lha/i1;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lt8/v;

    iget-object p0, p1, Lt8/v;->l:[J

    const-string p1, "$this$collectionSize"

    invoke-static {p0, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p0

    return p0
.end method

.method public final f(Lga/a;ILjava/lang/Object;)V
    .locals 2

    check-cast p3, Lha/h1;

    const-string v0, "builder"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lha/t0;->b:Lha/s0;

    invoke-interface {p1, p0, p2}, Lga/a;->j(Lha/s0;I)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->l()J

    move-result-wide p0

    invoke-static {p3}, Lha/r0;->c(Lha/r0;)V

    iget-object p2, p3, Lha/h1;->a:[J

    iget v0, p3, Lha/h1;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p3, Lha/h1;->b:I

    aput-wide p0, p2, v0

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt8/v;

    iget-object p0, p1, Lt8/v;->l:[J

    const-string p1, "$this$toBuilder"

    invoke-static {p0, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lha/h1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lha/h1;->a:[J

    array-length p0, p0

    iput p0, p1, Lha/h1;->b:I

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Lha/h1;->b(I)V

    return-object p1
.end method

.method public final j()Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [J

    new-instance v0, Lt8/v;

    invoke-direct {v0, p0}, Lt8/v;-><init>([J)V

    return-object v0
.end method

.method public final k(Lja/q;Ljava/lang/Object;I)V
    .locals 4

    check-cast p2, Lt8/v;

    iget-object p2, p2, Lt8/v;->l:[J

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lha/t0;->b:Lha/s0;

    invoke-virtual {p1, v1, v0}, Lja/q;->r(Lha/s0;I)Lkotlinx/serialization/encoding/Encoder;

    move-result-object v1

    aget-wide v2, p2, v0

    invoke-interface {v1, v2, v3}, Lkotlinx/serialization/encoding/Encoder;->m(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
