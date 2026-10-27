.class public Lmb/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lmb/k;

.field public c:Lmb/k;

.field public d:Lmb/p6;

.field public final synthetic e:Lmb/n;


# direct methods
.method public constructor <init>(Lmb/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/k;->e:Lmb/n;

    const/4 p1, -0x1

    iput p1, p0, Lmb/k;->a:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lmb/k;->e:Lmb/n;

    iget-object v1, v0, Lmb/n;->g:Lmb/h;

    iget v2, p0, Lmb/k;->a:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v1, v1, Lmb/k;->a:I

    iput v1, p0, Lmb/k;->a:I

    invoke-virtual {p0}, Lmb/k;->c()V

    iget-object v0, v0, Lmb/n;->g:Lmb/h;

    iget-object v1, v0, Lmb/k;->b:Lmb/k;

    iput-object v1, p0, Lmb/k;->b:Lmb/k;

    iput-object v0, p0, Lmb/k;->c:Lmb/k;

    iput-object p0, v1, Lmb/k;->c:Lmb/k;

    iput-object p0, v0, Lmb/k;->b:Lmb/k;

    return-void

    :cond_0
    new-instance p0, Lhb/b;

    const-string v0, "Offset already set"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lmb/k;->a()V

    new-instance v0, Lmb/d;

    iget-object p0, p0, Lmb/k;->e:Lmb/n;

    invoke-direct {v0, p0}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v0}, Lmb/k;->a()V

    return-void
.end method

.method public final c()V
    .locals 14

    iget-object v0, p0, Lmb/k;->e:Lmb/n;

    iget-object v0, v0, Lmb/n;->g:Lmb/h;

    iget-object v1, v0, Lmb/k;->d:Lmb/p6;

    iget-object v2, p0, Lmb/k;->d:Lmb/p6;

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v2

    goto/16 :goto_4

    :cond_0
    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v1, v2, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v1, v2}, Lmb/p6;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {v1}, Lmb/p6;->b()[Lorg/codehaus/janino/util/r0;

    move-result-object v3

    invoke-virtual {v2}, Lmb/p6;->b()[Lorg/codehaus/janino/util/r0;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object v3

    invoke-virtual {v2}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    array-length v7, v3

    if-ge v5, v7, :cond_7

    array-length v7, v2

    if-ge v6, v7, :cond_7

    add-int/lit8 v7, v5, 0x1

    aget-object v8, v3, v5

    add-int/lit8 v9, v6, 0x1

    aget-object v10, v2, v6

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move v5, v7

    move v6, v9

    goto :goto_1

    :cond_4
    const/4 v11, 0x2

    sget-object v12, Lorg/codehaus/janino/util/s0;->d:Lorg/codehaus/janino/util/j0;

    if-ne v8, v12, :cond_5

    invoke-interface {v10}, Lorg/codehaus/janino/util/r0;->b()I

    move-result v13

    if-ne v13, v11, :cond_5

    add-int/lit8 v7, v5, 0x2

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    if-ne v10, v12, :cond_6

    invoke-interface {v8}, Lorg/codehaus/janino/util/r0;->b()I

    move-result v5

    if-ne v5, v11, :cond_6

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    new-instance v2, Lmb/p6;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/codehaus/janino/util/r0;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/codehaus/janino/util/r0;

    invoke-virtual {v1}, Lmb/p6;->b()[Lorg/codehaus/janino/util/r0;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lmb/p6;-><init>([Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V

    goto/16 :goto_0

    :goto_4
    iput-object v1, p0, Lmb/k;->d:Lmb/p6;

    iput-object v1, v0, Lmb/k;->d:Lmb/p6;

    return-void

    :cond_8
    new-instance p0, Lhb/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistent operand stack: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " vs. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/k;->e:Lmb/n;

    iget-object v1, v1, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v1}, Lorg/codehaus/janino/util/t0;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmb/k;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
