.class public abstract Lg6/p0;
.super Lg6/m1;
.source "SourceFile"


# instance fields
.field public final o:Lt6/f;

.field public final p:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;

.field public final r:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lt6/f;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lg6/p0;->o:Lt6/f;

    iput-object p3, p0, Lg6/p0;->p:Ljava/lang/Object;

    iput-object p4, p0, Lg6/p0;->q:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    iput-boolean p1, p0, Lg6/p0;->r:Z

    return-void
.end method


# virtual methods
.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg6/p0;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public final getNullAccessPattern()Lu6/a;
    .locals 1

    iget-boolean v0, p0, Lg6/p0;->r:Z

    if-eqz v0, :cond_0

    sget-object p0, Lu6/a;->n:Lu6/a;

    return-object p0

    :cond_0
    iget-object p0, p0, Lg6/p0;->p:Ljava/lang/Object;

    if-nez p0, :cond_1

    sget-object p0, Lu6/a;->l:Lu6/a;

    return-object p0

    :cond_1
    sget-object p0, Lu6/a;->m:Lu6/a;

    return-object p0
.end method

.method public final getNullValue(Lb6/i;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lg6/p0;->r:Z

    if-eqz v0, :cond_1

    sget-object v0, Lb6/j;->s:Lb6/j;

    invoke-virtual {p1, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-static {v0}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot map `null` into type %s (set DeserializationConfig.DeserializationFeature.FAIL_ON_NULL_FOR_PRIMITIVES to \'false\' to allow)"

    invoke-virtual {p1, p0, v1, v0}, Lb6/i;->v0(Lb6/n;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lg6/p0;->p:Ljava/lang/Object;

    return-object p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    iget-object p0, p0, Lg6/p0;->o:Lt6/f;

    return-object p0
.end method
