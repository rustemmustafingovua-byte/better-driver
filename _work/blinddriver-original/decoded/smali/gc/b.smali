.class public final Lgc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:Z

.field public final q:Lpb/a;

.field public final r:Lpb/a;

.field public final s:Lpb/a;

.field public final t:Lpb/i;


# direct methods
.method public constructor <init>(ZIIILpb/i;ZLpb/a;Lpb/a;Lpb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgc/b;->l:Z

    iput p2, p0, Lgc/b;->m:I

    iput p3, p0, Lgc/b;->n:I

    iput p4, p0, Lgc/b;->o:I

    iput-object p5, p0, Lgc/b;->t:Lpb/i;

    iput-boolean p6, p0, Lgc/b;->p:Z

    iput-object p8, p0, Lgc/b;->q:Lpb/a;

    iput-object p7, p0, Lgc/b;->r:Lpb/a;

    iput-object p9, p0, Lgc/b;->s:Lpb/a;

    return-void
.end method


# virtual methods
.method public final a(Lgc/b;)I
    .locals 5

    iget-boolean v0, p1, Lgc/b;->l:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget-boolean v3, p0, Lgc/b;->l:Z

    if-eq v3, v0, :cond_1

    if-eqz v3, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lgc/b;->m:I

    iget v3, p1, Lgc/b;->m:I

    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget v0, p0, Lgc/b;->n:I

    iget v3, p1, Lgc/b;->n:I

    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lgc/b;->o:I

    iget v3, p1, Lgc/b;->o:I

    invoke-static {v0, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p1, Lgc/b;->r:Lpb/a;

    const/4 v3, 0x0

    iget-object v4, p0, Lgc/b;->r:Lpb/a;

    if-nez v4, :cond_6

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v4, v0}, Lpb/a;->a(Lpb/a;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_8

    return v0

    :cond_8
    iget-object p1, p1, Lgc/b;->s:Lpb/a;

    iget-object p0, p0, Lgc/b;->s:Lpb/a;

    if-nez p0, :cond_a

    if-nez p1, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    if-nez p1, :cond_b

    return v1

    :cond_b
    invoke-virtual {p0, p1}, Lpb/a;->a(Lpb/a;)I

    move-result p0

    return p0
.end method

.method public final b(I)Lpb/a;
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lgc/b;->r:Lpb/a;

    return-object p0

    :cond_0
    iget-object p0, p0, Lgc/b;->s:Lpb/a;

    return-object p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lgc/b;

    invoke-virtual {p0, p1}, Lgc/b;->a(Lgc/b;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lgc/b;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "A"

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const-string v0, "B"

    goto :goto_0

    :goto_1
    iget-boolean v0, p0, Lgc/b;->p:Z

    if-eqz v0, :cond_1

    const-string v0, "-V-"

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_1
    const-string v0, "---"

    goto :goto_2

    :goto_3
    iget v0, p0, Lgc/b;->n:I

    if-ltz v0, :cond_2

    const-string v2, "["

    const-string v3, ":"

    invoke-static {v0, v2, v3}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lgc/b;->o:I

    const-string v3, "]"

    invoke-static {v2, v3, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    move-object v3, v0

    goto :goto_5

    :cond_2
    const-string v0, ""

    goto :goto_4

    :goto_5
    iget v0, p0, Lgc/b;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v0, "null"

    iget-object v4, p0, Lgc/b;->q:Lpb/a;

    iget-object v6, p0, Lgc/b;->r:Lpb/a;

    if-eqz v6, :cond_4

    if-nez v4, :cond_3

    goto :goto_6

    :cond_3
    invoke-static {v6, v4}, Ld7/g;->u(Lpb/a;Lpb/a;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_4
    :goto_6
    move-object v6, v0

    :goto_7
    if-eqz v4, :cond_6

    iget-object p0, p0, Lgc/b;->s:Lpb/a;

    if-nez p0, :cond_5

    goto :goto_8

    :cond_5
    invoke-static {v4, p0}, Ld7/g;->u(Lpb/a;Lpb/a;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_8
    move-object v4, v6

    move-object v6, v0

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s%d%s: %s %s %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
