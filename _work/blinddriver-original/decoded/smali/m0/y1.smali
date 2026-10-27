.class public final synthetic Lm0/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm0/v1;


# direct methods
.method public synthetic constructor <init>(Lm0/v1;I)V
    .locals 0

    iput p2, p0, Lm0/y1;->l:I

    iput-object p1, p0, Lm0/y1;->m:Lm0/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lm0/y1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lm0/y1;->m:Lm0/v1;

    iget-object p0, p0, Lm0/v1;->g:Li9/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lm0/y1;->m:Lm0/v1;

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v0

    iget-object v0, v0, Lu2/x;->a:Lp2/g;

    invoke-virtual {p0}, Lm0/v1;->n()Lu2/x;

    move-result-object v1

    iget-object v1, v1, Lu2/x;->a:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lp2/d0;->b(II)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lm0/v1;->e(Lp2/g;J)Lu2/x;

    move-result-object v0

    iget-object v1, p0, Lm0/v1;->c:Li9/c;

    invoke-interface {v1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, v0, Lu2/x;->b:J

    new-instance v2, Lp2/l0;

    invoke-direct {v2, v0, v1}, Lp2/l0;-><init>(J)V

    iput-object v2, p0, Lm0/v1;->w:Lp2/l0;

    iget-object v2, p0, Lm0/v1;->u:Lu2/x;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v2, v3, v0, v1, v4}, Lu2/x;->a(Lu2/x;Lp2/g;JI)Lu2/x;

    move-result-object v0

    iput-object v0, p0, Lm0/v1;->u:Lu2/x;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm0/v1;->h(Z)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lm0/y1;->m:Lm0/v1;

    iget-boolean p0, p0, Lm0/v1;->B:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
