.class public final synthetic Lb0/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb0/c2;


# direct methods
.method public synthetic constructor <init>(Lb0/c2;I)V
    .locals 0

    iput p2, p0, Lb0/v1;->l:I

    iput-object p1, p0, Lb0/v1;->m:Lb0/c2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lb0/v1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ly1/u;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v0

    iget-object p0, p0, Lb0/v1;->m:Lb0/c2;

    invoke-interface {p0, v0, v1}, Lb0/c2;->e(J)V

    invoke-virtual {p1}, Ly1/u;->a()V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Ly1/u;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v0

    iget-object p0, p0, Lb0/v1;->m:Lb0/c2;

    invoke-interface {p0, v0, v1}, Lb0/c2;->e(J)V

    invoke-virtual {p1}, Ly1/u;->a()V

    goto :goto_0

    :pswitch_1
    check-cast p1, Ll1/b;

    iget-wide v0, p1, Ll1/b;->a:J

    sget-object p1, Lm0/c0;->d:Lm0/b0;

    iget-object p0, p0, Lb0/v1;->m:Lb0/c2;

    invoke-interface {p0, v0, v1, p1}, Lb0/c2;->a(JLm0/b0;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
