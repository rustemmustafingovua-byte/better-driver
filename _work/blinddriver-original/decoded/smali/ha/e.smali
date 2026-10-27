.class public final Lha/e;
.super Lha/t0;
.source "SourceFile"


# static fields
.field public static final c:Lha/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha/e;

    sget-object v1, Lha/f;->a:Lha/f;

    invoke-direct {v0, v1}, Lha/t0;-><init>(Lkotlinx/serialization/KSerializer;)V

    sput-object v0, Lha/e;->c:Lha/e;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [Z

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public final f(Lga/a;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lha/d;

    const-string v0, "builder"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lha/t0;->b:Lha/s0;

    invoke-interface {p1, p0, p2}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result p0

    invoke-static {p3}, Lha/r0;->c(Lha/r0;)V

    iget-object p1, p3, Lha/d;->a:[Z

    iget p2, p3, Lha/d;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p3, Lha/d;->b:I

    aput-boolean p0, p1, p2

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Z

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lha/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/d;->a:[Z

    array-length p1, p1

    iput p1, p0, Lha/d;->b:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lha/d;->b(I)V

    return-object p0
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Z

    return-object p0
.end method

.method public final k(Lja/q;Ljava/lang/Object;I)V
    .locals 3

    check-cast p2, [Z

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-boolean v1, p2, v0

    iget-object v2, p0, Lha/t0;->b:Lha/s0;

    invoke-virtual {p1, v2, v0, v1}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
