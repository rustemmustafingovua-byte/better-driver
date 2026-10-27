.class public abstract Lia/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lia/b;


# instance fields
.field public final a:Lia/j;

.field public final b:Ld7/g;

.field public final c:Lb0/l1;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lia/b;

    new-instance v1, Lia/j;

    const/4 v9, 0x1

    sget-object v10, Lia/a;->m:Lia/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "    "

    const/4 v7, 0x0

    const-string v8, "type"

    invoke-direct/range {v1 .. v10}, Lia/j;-><init>(ZZZZLjava/lang/String;ZLjava/lang/String;ZLia/a;)V

    sget-object v2, Lka/a;->a:Ld7/g;

    invoke-direct {v0, v1, v2}, Lia/c;-><init>(Lia/j;Ld7/g;)V

    sput-object v0, Lia/c;->d:Lia/b;

    return-void
.end method

.method public constructor <init>(Lia/j;Ld7/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lia/c;->a:Lia/j;

    iput-object p2, p0, Lia/c;->b:Ld7/g;

    new-instance p1, Lb0/l1;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, Lb0/l1;-><init>(I)V

    iput-object p1, p0, Lia/c;->c:Lb0/l1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;
    .locals 4

    const-string v0, "deserializer"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lja/s;

    invoke-direct {v0, p1}, Lja/s;-><init>(Ljava/lang/String;)V

    new-instance v1, Lja/p;

    sget-object v2, Lja/u;->n:Lja/u;

    invoke-interface {p2}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-direct {v1, p0, v2, v0, v3}, Lja/p;-><init>(Lia/c;Lja/u;Lja/s;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-virtual {v1, p2}, Lja/p;->n(Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Lja/s;->e()B

    move-result p2

    const/16 v1, 0xa

    if-ne p2, v1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Expected EOF after parsing, but had "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lja/s;->a:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x6

    invoke-static {v0, p0, p1, p2}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lf7/c0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lf7/c0;-><init>(I)V

    sget-object v1, Lja/b;->n:Lja/b;

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lja/c;->m:Ljava/lang/Object;

    check-cast v2, Lu8/k;

    invoke-virtual {v2}, Lu8/k;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lu8/k;->removeLast()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    check-cast v2, [C

    if-eqz v2, :cond_1

    iget v3, v1, Lja/c;->l:I

    array-length v4, v2

    sub-int/2addr v3, v4

    iput v3, v1, Lja/c;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    if-nez v4, :cond_2

    const/16 v1, 0x80

    new-array v4, v1, [C

    :cond_2
    iput-object v4, v0, Lf7/c0;->c:Ljava/lang/Object;

    :try_start_1
    new-instance v1, Lja/q;

    sget-object v2, Lja/u;->n:Lja/u;

    sget-object v3, Lja/u;->s:Lb9/b;

    invoke-virtual {v3}, Lb9/b;->a()I

    move-result v3

    new-array v3, v3, [Lja/q;

    new-instance v4, Lb6/g0;

    invoke-direct {v4, v0}, Lb6/g0;-><init>(Lf7/c0;)V

    invoke-direct {v1, v4, p0, v2, v3}, Lja/q;-><init>(Lb6/g0;Lia/c;Lja/u;[Lja/q;)V

    invoke-virtual {v1, p1, p2}, Lja/q;->l(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lf7/c0;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0}, Lf7/c0;->k()V

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lf7/c0;->k()V

    throw p0

    :goto_2
    monitor-exit v1

    throw p0
.end method

.method public final c(Ljava/lang/String;)Lia/l;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lia/o;->a:Lia/o;

    invoke-virtual {p0, p1, v0}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lia/l;

    return-object p0
.end method
