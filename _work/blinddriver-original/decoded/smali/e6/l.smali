.class public final Le6/l;
.super Le6/y;
.source "SourceFile"


# instance fields
.field public A:Le6/y;

.field public final B:I

.field public C:Z

.field public final y:Lj6/m;

.field public final z:Lr5/b;


# direct methods
.method public constructor <init>(Lb6/i0;Lb6/l;Lb6/i0;Ln6/d;Lu6/b;Lj6/m;ILr5/b;Lb6/h0;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p9

    .line 1
    invoke-direct/range {v0 .. v6}, Le6/y;-><init>(Lb6/i0;Lb6/l;Lb6/i0;Ln6/d;Lu6/b;Lb6/h0;)V

    .line 2
    iput-object p6, p0, Le6/l;->y:Lj6/m;

    .line 3
    iput p7, p0, Le6/l;->B:I

    .line 4
    iput-object p8, p0, Le6/l;->z:Lr5/b;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le6/l;->A:Le6/y;

    return-void
.end method

.method public constructor <init>(Le6/l;Lb6/i0;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Le6/y;-><init>(Le6/y;Lb6/i0;)V

    .line 7
    iget-object p2, p1, Le6/l;->y:Lj6/m;

    iput-object p2, p0, Le6/l;->y:Lj6/m;

    .line 8
    iget-object p2, p1, Le6/l;->z:Lr5/b;

    iput-object p2, p0, Le6/l;->z:Lr5/b;

    .line 9
    iget-object p2, p1, Le6/l;->A:Le6/y;

    iput-object p2, p0, Le6/l;->A:Le6/y;

    .line 10
    iget p2, p1, Le6/l;->B:I

    iput p2, p0, Le6/l;->B:I

    .line 11
    iget-boolean p1, p1, Le6/l;->C:Z

    iput-boolean p1, p0, Le6/l;->C:Z

    return-void
.end method

.method public constructor <init>(Le6/l;Lb6/n;Le6/r;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p3}, Le6/y;-><init>(Le6/y;Lb6/n;Le6/r;)V

    .line 13
    iget-object p2, p1, Le6/l;->y:Lj6/m;

    iput-object p2, p0, Le6/l;->y:Lj6/m;

    .line 14
    iget-object p2, p1, Le6/l;->z:Lr5/b;

    iput-object p2, p0, Le6/l;->z:Lr5/b;

    .line 15
    iget-object p2, p1, Le6/l;->A:Le6/y;

    iput-object p2, p0, Le6/l;->A:Le6/y;

    .line 16
    iget p2, p1, Le6/l;->B:I

    iput p2, p0, Le6/l;->B:I

    .line 17
    iget-boolean p1, p1, Le6/l;->C:Z

    iput-boolean p1, p0, Le6/l;->C:Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Le6/l;->H()V

    iget-object p0, p0, Le6/l;->A:Le6/y;

    invoke-virtual {p0, p1, p2}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le6/l;->H()V

    iget-object p0, p0, Le6/l;->A:Le6/y;

    invoke-virtual {p0, p1, p2}, Le6/y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final E(Lb6/i0;)Le6/y;
    .locals 1

    new-instance v0, Le6/l;

    invoke-direct {v0, p0, p1}, Le6/l;-><init>(Le6/l;Lb6/i0;)V

    return-object v0
.end method

.method public final F(Le6/r;)Le6/y;
    .locals 2

    new-instance v0, Le6/l;

    iget-object v1, p0, Le6/y;->q:Lb6/n;

    invoke-direct {v0, p0, v1, p1}, Le6/l;-><init>(Le6/l;Lb6/n;Le6/r;)V

    return-object v0
.end method

.method public final G(Lb6/n;)Le6/y;
    .locals 2

    iget-object v0, p0, Le6/y;->q:Lb6/n;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Le6/y;->s:Le6/r;

    if-ne v0, v1, :cond_1

    move-object v1, p1

    :cond_1
    new-instance v0, Le6/l;

    invoke-direct {v0, p0, p1, v1}, Le6/l;-><init>(Le6/l;Lb6/n;Le6/r;)V

    return-object v0
.end method

.method public final H()V
    .locals 4

    iget-object v0, p0, Le6/l;->A:Le6/y;

    if-nez v0, :cond_1

    iget-object v0, p0, Le6/l;->y:Lj6/m;

    if-nez v0, :cond_0

    const-string v0, "UNKNOWN TYPE"

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lj6/m;->n:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lu6/h;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Le6/y;->n:Lb6/i0;

    iget-object p0, p0, Lb6/i0;->l:Ljava/lang/String;

    invoke-static {p0}, Lu6/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " (of "

    const-string v2, ")"

    const-string v3, "No fallback setter/field defined for creator property "

    invoke-static {v3, p0, v1, v0, v2}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lh6/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final c()Lb6/h0;
    .locals 1

    iget-object v0, p0, Le6/l;->A:Le6/y;

    iget-object p0, p0, Lj6/y;->l:Lb6/h0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj6/y;->c()Lb6/h0;

    move-result-object v0

    iget-object v0, v0, Lb6/h0;->p:Lb6/g0;

    invoke-virtual {p0, v0}, Lb6/h0;->b(Lb6/g0;)Lb6/h0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final d()Lj6/h;
    .locals 0

    iget-object p0, p0, Le6/l;->y:Lj6/m;

    return-object p0
.end method

.method public final k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Le6/l;->H()V

    iget-object v0, p0, Le6/l;->A:Le6/y;

    invoke-virtual {p0, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p3, p0}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Le6/l;->H()V

    iget-object v0, p0, Le6/l;->A:Le6/y;

    invoke-virtual {p0, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p3, p0}, Le6/y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lb6/h;)V
    .locals 0

    iget-object p0, p0, Le6/l;->A:Le6/y;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Le6/y;->n(Lb6/h;)V

    :cond_0
    return-void
.end method

.method public final o()I
    .locals 0

    iget p0, p0, Le6/l;->B:I

    return p0
.end method

.method public final p()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le6/l;->z:Lr5/b;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lr5/b;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[creator property, name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le6/y;->n:Lb6/i0;

    iget-object v1, v1, Lb6/i0;->l:Ljava/lang/String;

    invoke-static {v1}, Lu6/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; inject id \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le6/l;->p()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\']"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x()Z
    .locals 0

    iget-boolean p0, p0, Le6/l;->C:Z

    return p0
.end method

.method public final y()Z
    .locals 1

    iget-object p0, p0, Le6/l;->z:Lr5/b;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lr5/b;->m:Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le6/l;->C:Z

    return-void
.end method
