.class public final Lf8/v2;
.super Lf8/x2;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lf8/j3;


# static fields
.field public static final x:[Lf8/x5;


# instance fields
.field public final l:I

.field public final m:Lf8/q0;

.field public final n:Ljava/lang/String;

.field public final o:Lf8/w2;

.field public final p:Lf8/m2;

.field public final q:Z

.field public r:Lf8/u2;

.field public s:Lf8/m2;

.field public t:Lf8/m2;

.field public final u:Lf8/z2;

.field public v:Lf8/r2;

.field public w:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lf8/x5;->values()[Lf8/x5;

    move-result-object v0

    sput-object v0, Lf8/v2;->x:[Lf8/x5;

    invoke-static {}, Lf8/u2;->values()[Lf8/u2;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lf8/p0;->values()[Lf8/p0;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "descriptor.proto has a new declared type but Descriptors.java wasn\'t updated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lf8/q0;Lf8/w2;Lf8/m2;IZ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lf8/v2;->l:I

    iput-object p1, p0, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {p1}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lf8/b3;->a(Lf8/w2;Lf8/m2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lf8/v2;->n:Ljava/lang/String;

    iput-object p2, p0, Lf8/v2;->o:Lf8/w2;

    invoke-virtual {p1}, Lf8/q0;->D()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lf8/q0;->x()Ljava/lang/String;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_3

    const/16 v4, 0x61

    if-gt v4, v5, :cond_2

    const/16 v4, 0x7a

    :cond_2
    move v4, v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {p1}, Lf8/q0;->J()Z

    move-result p4

    if-eqz p4, :cond_6

    iget p4, p1, Lf8/q0;->r:I

    invoke-static {p4}, Lf8/p0;->b(I)Lf8/p0;

    move-result-object p4

    if-nez p4, :cond_5

    sget-object p4, Lf8/p0;->m:Lf8/p0;

    :cond_5
    invoke-static {}, Lf8/u2;->values()[Lf8/u2;

    move-result-object v1

    iget p4, p4, Lf8/p0;->l:I

    sub-int/2addr p4, v0

    aget-object p4, v1, p4

    iput-object p4, p0, Lf8/v2;->r:Lf8/u2;

    :cond_6
    iget-boolean p4, p1, Lf8/q0;->y:Z

    iput-boolean p4, p0, Lf8/v2;->q:Z

    iget-object p4, p0, Lf8/v2;->m:Lf8/q0;

    iget p4, p4, Lf8/q0;->p:I

    if-lez p4, :cond_e

    const/4 p4, 0x0

    if-eqz p5, :cond_a

    invoke-virtual {p1}, Lf8/q0;->C()Z

    move-result p5

    if-eqz p5, :cond_9

    iput-object p4, p0, Lf8/v2;->s:Lf8/m2;

    if-eqz p3, :cond_7

    iput-object p3, p0, Lf8/v2;->p:Lf8/m2;

    goto :goto_3

    :cond_7
    iput-object p4, p0, Lf8/v2;->p:Lf8/m2;

    :goto_3
    invoke-virtual {p1}, Lf8/q0;->G()Z

    move-result p1

    if-nez p1, :cond_8

    iput-object p4, p0, Lf8/v2;->u:Lf8/z2;

    goto :goto_5

    :cond_8
    new-instance p1, Lf8/q2;

    const-string p2, "FieldDescriptorProto.oneof_index set for extension field."

    invoke-direct {p1, p0, p2}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Lf8/q2;

    const-string p2, "FieldDescriptorProto.extendee not set for extension field."

    invoke-direct {p1, p0, p2}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1}, Lf8/q0;->C()Z

    move-result p5

    if-nez p5, :cond_d

    iput-object p3, p0, Lf8/v2;->s:Lf8/m2;

    invoke-virtual {p1}, Lf8/q0;->G()Z

    move-result p5

    if-eqz p5, :cond_c

    iget p5, p1, Lf8/q0;->v:I

    if-ltz p5, :cond_b

    iget-object v1, p3, Lf8/m2;->l:Lf8/t;

    iget-object v1, v1, Lf8/t;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p5, v1, :cond_b

    invoke-virtual {p3}, Lf8/m2;->k()Ljava/util/List;

    move-result-object p3

    iget p1, p1, Lf8/q0;->v:I

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf8/z2;

    iput-object p1, p0, Lf8/v2;->u:Lf8/z2;

    iget p3, p1, Lf8/z2;->q:I

    add-int/2addr p3, v0

    iput p3, p1, Lf8/z2;->q:I

    goto :goto_4

    :cond_b
    new-instance p1, Lf8/q2;

    iget-object p2, p3, Lf8/m2;->l:Lf8/t;

    invoke-virtual {p2}, Lf8/t;->v()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FieldDescriptorProto.oneof_index is out of range for type "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p1

    :cond_c
    iput-object p4, p0, Lf8/v2;->u:Lf8/z2;

    :goto_4
    iput-object p4, p0, Lf8/v2;->p:Lf8/m2;

    :goto_5
    iget-object p1, p2, Lf8/w2;->r:Lf8/p2;

    invoke-virtual {p1, p0}, Lf8/p2;->b(Lf8/x2;)V

    return-void

    :cond_d
    new-instance p1, Lf8/q2;

    const-string p2, "FieldDescriptorProto.extendee set for non-extension field."

    invoke-direct {p1, p0, p2}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lf8/q2;

    const-string p2, "Field numbers must be positive integers."

    invoke-direct {p1, p0, p2}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw p1
.end method

.method public static f(Lf8/v2;)V
    .locals 13

    iget-object v0, p0, Lf8/v2;->o:Lf8/w2;

    const-string v1, "Couldn\'t parse default value: "

    const-string v2, "Unknown enum default value: \""

    iget-object v3, p0, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v3}, Lf8/q0;->C()Z

    move-result v4

    const-string v5, "\" is not a message type."

    const-string v6, "\""

    if-eqz v4, :cond_2

    iget-object v4, v0, Lf8/w2;->r:Lf8/p2;

    invoke-virtual {v3}, Lf8/q0;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p0, v7}, Lf8/p2;->f(Lf8/x2;Ljava/lang/String;)Lf8/x2;

    move-result-object v4

    instance-of v7, v4, Lf8/m2;

    if-eqz v7, :cond_1

    check-cast v4, Lf8/m2;

    iput-object v4, p0, Lf8/v2;->s:Lf8/m2;

    iget v7, v3, Lf8/q0;->p:I

    invoke-virtual {v4, v7}, Lf8/m2;->l(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lf8/q2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lf8/v2;->s:Lf8/m2;

    iget-object v2, v2, Lf8/m2;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" does not declare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lf8/q0;->p:I

    const-string v3, " as an extension number."

    invoke-static {v2, v3, v1}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lf8/q2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lf8/q0;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lf8/q0;->K()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v0, Lf8/w2;->r:Lf8/p2;

    invoke-virtual {v3}, Lf8/q0;->A()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p0, v7}, Lf8/p2;->f(Lf8/x2;Ljava/lang/String;)Lf8/x2;

    move-result-object v4

    invoke-virtual {v3}, Lf8/q0;->J()Z

    move-result v7

    if-nez v7, :cond_5

    instance-of v7, v4, Lf8/m2;

    if-eqz v7, :cond_3

    sget-object v7, Lf8/u2;->o:Lf8/u2;

    iput-object v7, p0, Lf8/v2;->r:Lf8/u2;

    goto :goto_1

    :cond_3
    instance-of v7, v4, Lf8/r2;

    if-eqz v7, :cond_4

    sget-object v7, Lf8/u2;->q:Lf8/u2;

    iput-object v7, p0, Lf8/v2;->r:Lf8/u2;

    goto :goto_1

    :cond_4
    new-instance v0, Lf8/q2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lf8/q0;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not a type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    iget-object v7, p0, Lf8/v2;->r:Lf8/u2;

    iget-object v7, v7, Lf8/u2;->l:Lf8/t2;

    sget-object v8, Lf8/t2;->u:Lf8/t2;

    if-ne v7, v8, :cond_8

    instance-of v7, v4, Lf8/m2;

    if-eqz v7, :cond_7

    check-cast v4, Lf8/m2;

    iput-object v4, p0, Lf8/v2;->t:Lf8/m2;

    invoke-virtual {v3}, Lf8/q0;->B()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Lf8/q2;

    const-string v1, "Messages can\'t have default values."

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lf8/q2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lf8/q0;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_8
    sget-object v5, Lf8/t2;->t:Lf8/t2;

    if-ne v7, v5, :cond_a

    instance-of v5, v4, Lf8/r2;

    if-eqz v5, :cond_9

    check-cast v4, Lf8/r2;

    iput-object v4, p0, Lf8/v2;->v:Lf8/r2;

    goto :goto_2

    :cond_9
    new-instance v0, Lf8/q2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lf8/q0;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is not an enum type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Lf8/q2;

    const-string v1, "Field with primitive type has type_name."

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v4, p0, Lf8/v2;->r:Lf8/u2;

    iget-object v4, v4, Lf8/u2;->l:Lf8/t2;

    sget-object v5, Lf8/t2;->u:Lf8/t2;

    if-eq v4, v5, :cond_24

    sget-object v5, Lf8/t2;->t:Lf8/t2;

    if-eq v4, v5, :cond_24

    :goto_2
    invoke-virtual {v3}, Lf8/q0;->z()Lf8/v0;

    move-result-object v4

    iget-boolean v4, v4, Lf8/v0;->q:Z

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lf8/v2;->l()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lf8/v2;->i()Lf8/x5;

    move-result-object v4

    invoke-virtual {v4}, Lf8/x5;->a()Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    new-instance v0, Lf8/q2;

    const-string v1, "[packed = true] can only be specified for repeated primitive fields."

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_3
    invoke-virtual {v3}, Lf8/q0;->B()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_17

    invoke-virtual {p0}, Lf8/v2;->l()Z

    move-result v4

    if-nez v4, :cond_16

    const/16 v4, 0x22

    :try_start_0
    iget-object v9, p0, Lf8/v2;->r:Lf8/u2;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "nan"

    const-string v11, "-inf"

    const-string v12, "inf"

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lf8/v2;->v:Lf8/r2;

    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lf8/r2;->n:Lf8/w2;

    iget-object v9, v9, Lf8/w2;->r:Lf8/p2;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lf8/r2;->m:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v5, v1}, Lf8/p2;->d(ILjava/lang/String;)Lf8/x2;

    move-result-object v1

    if-eqz v1, :cond_e

    instance-of v8, v1, Lf8/s2;

    if-eqz v8, :cond_e

    check-cast v1, Lf8/s2;

    goto :goto_4

    :cond_e
    move-object v1, v6

    :goto_4
    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    if-eqz v1, :cond_f

    goto/16 :goto_6

    :cond_f
    new-instance v0, Lf8/q2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :pswitch_1
    :try_start_2
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf8/c5;->d(Ljava/lang/String;)Lf8/j;

    move-result-object v2

    iput-object v2, p0, Lf8/v2;->w:Ljava/lang/Object;
    :try_end_2
    .catch Lf8/z4; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Lf8/q2;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :pswitch_2
    new-instance v0, Lf8/q2;

    const-string v1, "Message type had default value."

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :pswitch_3
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, v8}, Lf8/c5;->c(Ljava/lang/String;ZZ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_6
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, v8}, Lf8/c5;->c(Ljava/lang/String;ZZ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_7
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v8, v7}, Lf8/c5;->c(Ljava/lang/String;ZZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_8
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7, v7}, Lf8/c5;->c(Ljava/lang/String;ZZ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_9
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_10
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_11
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_12
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_a
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_13
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto/16 :goto_6

    :cond_14
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto :goto_6

    :cond_15
    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :goto_5
    new-instance v1, Lf8/q2;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse default value: \""

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lf8/q0;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_16
    new-instance v0, Lf8/q2;

    const-string v1, "Repeated fields cannot have default values."

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p0}, Lf8/v2;->l()Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto :goto_6

    :cond_18
    iget-object v1, p0, Lf8/v2;->r:Lf8/u2;

    iget-object v1, v1, Lf8/u2;->l:Lf8/t2;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1a

    const/16 v2, 0x8

    if-eq v1, v2, :cond_19

    iget-object v1, p0, Lf8/v2;->r:Lf8/u2;

    iget-object v1, v1, Lf8/u2;->l:Lf8/t2;

    iget-object v1, v1, Lf8/t2;->l:Ljava/lang/Object;

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto :goto_6

    :cond_19
    iput-object v6, p0, Lf8/v2;->w:Ljava/lang/Object;

    goto :goto_6

    :cond_1a
    iget-object v1, p0, Lf8/v2;->v:Lf8/r2;

    iget-object v1, v1, Lf8/r2;->o:[Lf8/s2;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lf8/v2;->w:Ljava/lang/Object;

    :goto_6
    invoke-virtual {v3}, Lf8/q0;->C()Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v0, v0, Lf8/w2;->r:Lf8/p2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lf8/n2;

    iget-object v2, p0, Lf8/v2;->s:Lf8/m2;

    iget v4, v3, Lf8/q0;->p:I

    invoke-direct {v1, v2, v4}, Lf8/n2;-><init>(Lf8/x2;I)V

    iget-object v0, v0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf8/v2;

    if-nez v2, :cond_1b

    goto :goto_7

    :cond_1b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lf8/q2;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Field number "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lf8/q0;->p:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " has already been used in \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lf8/v2;->s:Lf8/m2;

    iget-object v3, v3, Lf8/m2;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" by field \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {v2}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_1c
    :goto_7
    iget-object v0, p0, Lf8/v2;->s:Lf8/m2;

    if-eqz v0, :cond_23

    iget-object v0, v0, Lf8/m2;->l:Lf8/t;

    invoke-virtual {v0}, Lf8/t;->w()Lf8/f1;

    move-result-object v0

    iget-boolean v0, v0, Lf8/f1;->p:Z

    if-eqz v0, :cond_23

    invoke-virtual {v3}, Lf8/q0;->C()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, v3, Lf8/q0;->q:I

    if-eq v0, v7, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    if-eq v0, v5, :cond_1d

    sget-object v0, Lf8/o0;->m:Lf8/o0;

    goto :goto_8

    :cond_1d
    sget-object v6, Lf8/o0;->o:Lf8/o0;

    goto :goto_8

    :cond_1e
    sget-object v6, Lf8/o0;->n:Lf8/o0;

    goto :goto_8

    :cond_1f
    sget-object v6, Lf8/o0;->m:Lf8/o0;

    :goto_8
    if-nez v6, :cond_20

    sget-object v6, Lf8/o0;->m:Lf8/o0;

    :cond_20
    sget-object v0, Lf8/o0;->m:Lf8/o0;

    if-ne v6, v0, :cond_21

    iget-object v0, p0, Lf8/v2;->r:Lf8/u2;

    sget-object v1, Lf8/u2;->o:Lf8/u2;

    if-ne v0, v1, :cond_21

    goto :goto_9

    :cond_21
    new-instance v0, Lf8/q2;

    const-string v1, "Extensions of MessageSets must be optional messages."

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_22
    new-instance v0, Lf8/q2;

    const-string v1, "MessageSets cannot have fields, only extensions."

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    :cond_23
    :goto_9
    return-void

    :cond_24
    new-instance v0, Lf8/q2;

    const-string v1, "Field with message or enum type missing type_name."

    invoke-direct {v0, p0, v1}, Lf8/q2;-><init>(Lf8/x2;Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final b()Lf8/w2;
    .locals 0

    iget-object p0, p0, Lf8/v2;->o:Lf8/w2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/v2;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lf8/v2;

    iget-object v0, p1, Lf8/v2;->s:Lf8/m2;

    iget-object v1, p0, Lf8/v2;->s:Lf8/m2;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lf8/v2;->m:Lf8/q0;

    iget p0, p0, Lf8/q0;->p:I

    iget-object p1, p1, Lf8/v2;->m:Lf8/q0;

    iget p1, p1, Lf8/q0;->p:I

    sub-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/v2;->m:Lf8/q0;

    invoke-virtual {p0}, Lf8/q0;->y()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/v2;->m:Lf8/q0;

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lf8/v2;->r:Lf8/u2;

    iget-object v0, v0, Lf8/u2;->l:Lf8/t2;

    sget-object v1, Lf8/t2;->u:Lf8/t2;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lf8/v2;->w:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "FieldDescriptor.getDefaultValue() called on an embedded message field."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()Lf8/r2;
    .locals 3

    iget-object v0, p0, Lf8/v2;->r:Lf8/u2;

    iget-object v0, v0, Lf8/u2;->l:Lf8/t2;

    sget-object v1, Lf8/t2;->t:Lf8/t2;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lf8/v2;->v:Lf8/r2;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of enum type. ("

    const-string v2, ")"

    iget-object p0, p0, Lf8/v2;->n:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Lf8/x5;
    .locals 1

    iget-object p0, p0, Lf8/v2;->r:Lf8/u2;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sget-object v0, Lf8/v2;->x:[Lf8/x5;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final j()Lf8/m2;
    .locals 3

    iget-object v0, p0, Lf8/v2;->r:Lf8/u2;

    iget-object v0, v0, Lf8/u2;->l:Lf8/t2;

    sget-object v1, Lf8/t2;->u:Lf8/t2;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lf8/v2;->t:Lf8/m2;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This field is not of message type. ("

    const-string v2, ")"

    iget-object p0, p0, Lf8/v2;->n:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lf8/v2;->r:Lf8/u2;

    sget-object v1, Lf8/u2;->o:Lf8/u2;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lf8/v2;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf8/v2;->j()Lf8/m2;

    move-result-object p0

    iget-object p0, p0, Lf8/m2;->l:Lf8/t;

    invoke-virtual {p0}, Lf8/t;->w()Lf8/f1;

    move-result-object p0

    iget-boolean p0, p0, Lf8/f1;->s:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l()Z
    .locals 2

    iget-object p0, p0, Lf8/v2;->m:Lf8/q0;

    iget p0, p0, Lf8/q0;->q:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    sget-object p0, Lf8/o0;->m:Lf8/o0;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lf8/o0;->o:Lf8/o0;

    goto :goto_0

    :cond_1
    sget-object p0, Lf8/o0;->n:Lf8/o0;

    goto :goto_0

    :cond_2
    sget-object p0, Lf8/o0;->m:Lf8/o0;

    :goto_0
    if-nez p0, :cond_3

    sget-object p0, Lf8/o0;->m:Lf8/o0;

    :cond_3
    sget-object v1, Lf8/o0;->o:Lf8/o0;

    if-ne p0, v1, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lf8/v2;->r:Lf8/u2;

    sget-object v1, Lf8/u2;->m:Lf8/u2;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lf8/v2;->s:Lf8/m2;

    iget-object v0, v0, Lf8/m2;->l:Lf8/t;

    invoke-virtual {v0}, Lf8/t;->w()Lf8/f1;

    move-result-object v0

    iget-boolean v0, v0, Lf8/f1;->s:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lf8/v2;->o:Lf8/w2;

    invoke-virtual {p0}, Lf8/w2;->h()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lf8/w2;->l:Lf8/y0;

    invoke-virtual {p0}, Lf8/y0;->w()Lf8/c1;

    move-result-object p0

    iget-boolean p0, p0, Lf8/c1;->t:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/v2;->n:Ljava/lang/String;

    return-object p0
.end method
