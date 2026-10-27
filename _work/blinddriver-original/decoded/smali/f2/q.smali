.class public final Lf2/q;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lj9/y;


# direct methods
.method public synthetic constructor <init>(Lj9/y;I)V
    .locals 0

    iput p2, p0, Lf2/q;->l:I

    iput-object p1, p0, Lf2/q;->m:Lj9/y;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf2/q;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ly1/f;

    iget-object p0, p0, Lf2/q;->m:Lj9/y;

    iget-object v0, p0, Lj9/y;->m:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v1, p1, Ly1/f;->B:Z

    if-eqz v1, :cond_0

    iput-object p1, p0, Lj9/y;->m:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    check-cast p1, Le2/e2;

    move-object v0, p1

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lf2/q;->m:Lj9/y;

    iput-object p1, p0, Lj9/y;->m:Ljava/lang/Object;

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lk1/b0;

    iget-object p0, p0, Lf2/q;->m:Lj9/y;

    iput-object p1, p0, Lj9/y;->m:Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
