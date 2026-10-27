.class public final Lk0/d;
.super Le2/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le2/y0;"
    }
.end annotation


# instance fields
.field public final a:Lu2/b0;

.field public final b:Lu2/x;

.field public final c:Lb0/r1;

.field public final d:Z

.field public final e:Z

.field public final f:Lu2/q;

.field public final g:Lm0/v1;

.field public final h:Lu2/k;

.field public final i:Lk1/u;


# direct methods
.method public constructor <init>(Lu2/b0;Lu2/x;Lb0/r1;ZZLu2/q;Lm0/v1;Lu2/k;Lk1/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/d;->a:Lu2/b0;

    iput-object p2, p0, Lk0/d;->b:Lu2/x;

    iput-object p3, p0, Lk0/d;->c:Lb0/r1;

    iput-boolean p4, p0, Lk0/d;->d:Z

    iput-boolean p5, p0, Lk0/d;->e:Z

    iput-object p6, p0, Lk0/d;->f:Lu2/q;

    iput-object p7, p0, Lk0/d;->g:Lm0/v1;

    iput-object p8, p0, Lk0/d;->h:Lu2/k;

    iput-object p9, p0, Lk0/d;->i:Lk1/u;

    return-void
.end method


# virtual methods
.method public final e()Lf1/q;
    .locals 3

    new-instance v0, Lk0/g;

    invoke-direct {v0}, Le2/k;-><init>()V

    iget-object v1, p0, Lk0/d;->a:Lu2/b0;

    iput-object v1, v0, Lk0/g;->B:Lu2/b0;

    iget-object v1, p0, Lk0/d;->b:Lu2/x;

    iput-object v1, v0, Lk0/g;->C:Lu2/x;

    iget-object v1, p0, Lk0/d;->c:Lb0/r1;

    iput-object v1, v0, Lk0/g;->D:Lb0/r1;

    iget-boolean v1, p0, Lk0/d;->d:Z

    iput-boolean v1, v0, Lk0/g;->E:Z

    iget-boolean v1, p0, Lk0/d;->e:Z

    iput-boolean v1, v0, Lk0/g;->F:Z

    iget-object v1, p0, Lk0/d;->f:Lu2/q;

    iput-object v1, v0, Lk0/g;->G:Lu2/q;

    iget-object v1, p0, Lk0/d;->g:Lm0/v1;

    iput-object v1, v0, Lk0/g;->H:Lm0/v1;

    iget-object v2, p0, Lk0/d;->h:Lu2/k;

    iput-object v2, v0, Lk0/g;->I:Lu2/k;

    iget-object p0, p0, Lk0/d;->i:Lk1/u;

    iput-object p0, v0, Lk0/g;->J:Lk1/u;

    new-instance p0, Lk0/e;

    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Lk0/e;-><init>(Lk0/g;I)V

    iput-object p0, v1, Lm0/v1;->g:Li9/a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lk0/d;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lk0/d;

    iget-object v0, p0, Lk0/d;->a:Lu2/b0;

    iget-object v1, p1, Lk0/d;->a:Lu2/b0;

    invoke-virtual {v0, v1}, Lu2/b0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lk0/d;->b:Lu2/x;

    iget-object v1, p1, Lk0/d;->b:Lu2/x;

    invoke-virtual {v0, v1}, Lu2/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lk0/d;->c:Lb0/r1;

    iget-object v1, p1, Lk0/d;->c:Lb0/r1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lk0/d;->d:Z

    iget-boolean v1, p1, Lk0/d;->d:Z

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lk0/d;->e:Z

    iget-boolean v1, p1, Lk0/d;->e:Z

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lk0/d;->f:Lu2/q;

    iget-object v1, p1, Lk0/d;->f:Lu2/q;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lk0/d;->g:Lm0/v1;

    iget-object v1, p1, Lk0/d;->g:Lm0/v1;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lk0/d;->h:Lu2/k;

    iget-object v1, p1, Lk0/d;->h:Lu2/k;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lk0/d;->i:Lk1/u;

    iget-object p1, p1, Lk0/d;->i:Lk1/u;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f(Lf1/q;)V
    .locals 9

    check-cast p1, Lk0/g;

    iget-boolean v0, p1, Lk0/g;->E:Z

    iget-boolean v1, p1, Lk0/g;->F:Z

    iget-object v2, p1, Lk0/g;->I:Lu2/k;

    iget-object v3, p1, Lk0/g;->H:Lm0/v1;

    iget-object v4, p0, Lk0/d;->a:Lu2/b0;

    iput-object v4, p1, Lk0/g;->B:Lu2/b0;

    iget-object v4, p0, Lk0/d;->b:Lu2/x;

    iput-object v4, p1, Lk0/g;->C:Lu2/x;

    iget-object v5, p0, Lk0/d;->c:Lb0/r1;

    iput-object v5, p1, Lk0/g;->D:Lb0/r1;

    iget-boolean v5, p0, Lk0/d;->d:Z

    iput-boolean v5, p1, Lk0/g;->E:Z

    iget-object v6, p0, Lk0/d;->f:Lu2/q;

    iput-object v6, p1, Lk0/g;->G:Lu2/q;

    iget-object v6, p0, Lk0/d;->g:Lm0/v1;

    iput-object v6, p1, Lk0/g;->H:Lm0/v1;

    iget-object v7, p0, Lk0/d;->h:Lu2/k;

    iput-object v7, p1, Lk0/g;->I:Lu2/k;

    iget-object v8, p0, Lk0/d;->i:Lk1/u;

    iput-object v8, p1, Lk0/g;->J:Lk1/u;

    if-ne v5, v0, :cond_0

    if-ne v5, v0, :cond_0

    invoke-static {v7, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lk0/d;->e:Z

    if-ne p0, v1, :cond_0

    iget-wide v0, v4, Lu2/x;->b:J

    invoke-static {v0, v1}, Lp2/l0;->c(J)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {p1}, Le2/l;->m(Le2/z1;)V

    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lk0/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lk0/e;-><init>(Lk0/g;I)V

    iput-object p0, v6, Lm0/v1;->g:Li9/a;

    :cond_2
    return-void
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lk0/d;->a:Lu2/b0;

    invoke-virtual {v0}, Lu2/b0;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk0/d;->b:Lu2/x;

    invoke-virtual {v2}, Lu2/x;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lk0/d;->c:Lb0/r1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lk0/d;->d:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lk0/d;->e:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v2, p0, Lk0/d;->f:Lu2/q;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lk0/d;->g:Lm0/v1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lk0/d;->h:Lu2/k;

    invoke-virtual {v2}, Lu2/k;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lk0/d;->i:Lk1/u;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoreTextFieldSemanticsModifier(transformedText="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk0/d;->a:Lu2/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/d;->b:Lu2/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/d;->c:Lb0/r1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", readOnly=false, enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk0/d;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lk0/d;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offsetMapping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/d;->f:Lu2/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", manager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/d;->g:Lm0/v1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imeOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/d;->h:Lu2/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focusRequester="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lk0/d;->i:Lk1/u;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
