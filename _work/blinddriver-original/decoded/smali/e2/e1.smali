.class public final Le2/e1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Le2/h1;


# direct methods
.method public synthetic constructor <init>(Le2/h1;I)V
    .locals 0

    iput p2, p0, Le2/e1;->l:I

    iput-object p1, p0, Le2/e1;->m:Le2/h1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le2/e1;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Le2/e1;->m:Le2/h1;

    iget-object p0, p0, Le2/h1;->B:Le2/h1;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le2/h1;->b1()V

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Le2/e1;->m:Le2/h1;

    iget-object v0, p0, Le2/h1;->S:Lm1/o;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Le2/h1;->R:Lp1/b;

    invoke-virtual {p0, v0, v1}, Le2/h1;->O0(Lm1/o;Lp1/b;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
