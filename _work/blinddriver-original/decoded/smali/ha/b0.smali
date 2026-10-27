.class public final Lha/b0;
.super Lha/t0;
.source "SourceFile"


# static fields
.field public static final c:Lha/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha/b0;

    sget-object v1, Lha/c0;->a:Lha/c0;

    invoke-direct {v0, v1}, Lha/t0;-><init>(Lkotlinx/serialization/KSerializer;)V

    sput-object v0, Lha/b0;->c:Lha/b0;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [I

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public final f(Lga/a;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lha/a0;

    const-string v0, "builder"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lha/t0;->b:Lha/s0;

    invoke-interface {p1, p0, p2}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result p0

    invoke-static {p3}, Lha/r0;->c(Lha/r0;)V

    iget-object p1, p3, Lha/a0;->a:[I

    iget p2, p3, Lha/a0;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p3, Lha/a0;->b:I

    aput p0, p1, p2

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [I

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lha/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/a0;->a:[I

    array-length p1, p1

    iput p1, p0, Lha/a0;->b:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lha/a0;->b(I)V

    return-object p0
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public final k(Lja/q;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, [I

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget v1, p2, v0

    iget-object v2, p0, Lha/t0;->b:Lha/s0;

    invoke-virtual {p1, v0, v1, v2}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
