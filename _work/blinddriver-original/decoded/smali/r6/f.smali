.class public final Lr6/f;
.super Ls6/x;
.source "SourceFile"


# static fields
.field public static final p:Lr6/f;

.field public static final q:Lr6/f;


# instance fields
.field public final synthetic o:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lr6/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr6/f;-><init>(I)V

    sput-object v0, Lr6/f;->p:Lr6/f;

    new-instance v0, Lr6/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lr6/f;-><init>(I)V

    sput-object v0, Lr6/f;->q:Lr6/f;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lr6/f;->o:I

    packed-switch p1, :pswitch_data_0

    .line 2
    const-class p1, Ljava/util/List;

    invoke-direct {p0, p1}, Ls6/x;-><init>(Ljava/lang/Class;)V

    return-void

    .line 3
    :pswitch_0
    const-class p1, Ljava/util/Collection;

    invoke-direct {p0, p1}, Ls6/x;-><init>(Ljava/lang/Class;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic constructor <init>(Ls6/x;Ljava/lang/Boolean;I)V
    .locals 0

    .line 1
    iput p3, p0, Lr6/f;->o:I

    invoke-direct {p0, p1, p2}, Ls6/x;-><init>(Ls6/x;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static j(Ljava/util/List;Ls5/g;Lb6/r0;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p2, p1}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1}, Ls5/g;->q0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    invoke-static {p2, p1, p0, v0}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public static k(Ljava/util/Collection;Ls5/g;Lb6/r0;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-virtual {p2, p1}, Lb6/r0;->U(Ls5/g;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v2}, Ls5/g;->q0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :goto_2
    invoke-static {p2, p1, p0, v0}, Ls6/n0;->f(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final i(Lb6/f;Ljava/lang/Boolean;)Lb6/u;
    .locals 1

    iget p1, p0, Lr6/f;->o:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lr6/f;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lr6/f;-><init>(Ls6/x;Ljava/lang/Boolean;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lr6/f;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lr6/f;-><init>(Ls6/x;Ljava/lang/Boolean;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 4

    iget v0, p0, Lr6/f;->o:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Ls6/x;->n:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    sget-object v0, Lb6/q0;->E:Lb6/q0;

    iget-object v1, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_2

    :cond_1
    invoke-static {p1, p2, p3}, Lr6/f;->k(Ljava/util/Collection;Ls5/g;Lb6/r0;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p1}, Ls5/g;->m0(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3}, Lr6/f;->k(Ljava/util/Collection;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->P()V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object p0, p0, Ls6/x;->n:Ljava/lang/Boolean;

    if-nez p0, :cond_3

    sget-object v2, Lb6/q0;->E:Lb6/q0;

    iget-object v3, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v3, v2}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v2, :cond_5

    :cond_4
    invoke-static {p1, p2, p3, v1}, Lr6/f;->j(Ljava/util/List;Ls5/g;Lb6/r0;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2, p1}, Ls5/g;->m0(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3, v0}, Lr6/f;->j(Ljava/util/List;Ls5/g;Lb6/r0;I)V

    invoke-virtual {p2}, Ls5/g;->P()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 1

    iget p0, p0, Lr6/f;->o:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/Collection;

    sget-object p0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    invoke-static {p1, p2, p3}, Lr6/f;->k(Ljava/util/Collection;Ls5/g;Lb6/r0;)V

    invoke-virtual {p4, p2, p0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    sget-object p0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p4, p1, p0}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p4, p2, p0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lr6/f;->j(Ljava/util/List;Ls5/g;Lb6/r0;I)V

    invoke-virtual {p4, p2, p0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
