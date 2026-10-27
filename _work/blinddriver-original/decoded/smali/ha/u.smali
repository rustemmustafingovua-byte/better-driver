.class public final Lha/u;
.super Lha/t0;
.source "SourceFile"


# static fields
.field public static final c:Lha/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lha/u;

    sget-object v1, Lha/v;->a:Lha/v;

    invoke-direct {v0, v1}, Lha/t0;-><init>(Lkotlinx/serialization/KSerializer;)V

    sput-object v0, Lha/u;->c:Lha/u;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [F

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    return p0
.end method

.method public final f(Lga/a;ILjava/lang/Object;)V
    .locals 1

    check-cast p3, Lha/t;

    const-string v0, "builder"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lha/t0;->b:Lha/s0;

    invoke-interface {p1, p0, p2}, Lga/a;->f(Lha/s0;I)F

    move-result p0

    invoke-static {p3}, Lha/r0;->c(Lha/r0;)V

    iget-object p1, p3, Lha/t;->a:[F

    iget p2, p3, Lha/t;->b:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p3, Lha/t;->b:I

    aput p0, p1, p2

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [F

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lha/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/t;->a:[F

    array-length p1, p1

    iput p1, p0, Lha/t;->b:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lha/t;->b(I)V

    return-object p0
.end method

.method public final j()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0
.end method

.method public final k(Lja/q;Ljava/lang/Object;I)V
    .locals 4

    check-cast p2, [F

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget v1, p2, v0

    const-string v2, "descriptor"

    iget-object v3, p0, Lha/t0;->b:Lha/s0;

    invoke-static {v3, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3, v0}, Lja/q;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    invoke-virtual {p1, v1}, Lja/q;->g(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
