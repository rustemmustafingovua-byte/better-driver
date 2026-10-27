.class public final Lmb/g6;
.super Lmb/s;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;

.field public final d:Lmb/x;


# direct methods
.method public constructor <init>(Lmb/i6;Ljava/lang/reflect/Field;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmb/g6;->b:I

    .line 1
    iput-object p1, p0, Lmb/g6;->d:Lmb/x;

    invoke-direct {p0, p1}, Lmb/s;-><init>(Lmb/x;)V

    iput-object p2, p0, Lmb/g6;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmb/x;Ljava/lang/String;Lmb/x;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lmb/g6;->b:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lmb/s;-><init>(Lmb/x;)V

    .line 3
    iput-object p2, p0, Lmb/g6;->c:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lmb/g6;->d:Lmb/x;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lmb/g6;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x3

    return p0

    :pswitch_0
    iget-object p0, p0, Lmb/g6;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Lmb/i6;->L(I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lmb/g6;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/g6;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/String;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Lhb/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Field \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" is not accessible"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lhb/a;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object p0, Lmb/x;->t:Lmb/q;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lmb/g6;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/g6;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/g6;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lmb/x;
    .locals 1

    iget v0, p0, Lmb/g6;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/g6;->d:Lmb/x;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lmb/g6;->d:Lmb/x;

    check-cast v0, Lmb/i6;

    iget-object p0, p0, Lmb/g6;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmb/i6;->J(Ljava/lang/Class;)Lmb/x;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    iget v0, p0, Lmb/g6;->b:I

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lmb/g6;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lmb/g6;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lmb/s;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/s;->a:Lmb/x;

    invoke-virtual {v1}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmb/o;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/g6;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
