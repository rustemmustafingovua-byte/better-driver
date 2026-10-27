.class public final Lb0/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb0/a1;->a:I

    iput-object p2, p0, Lb0/a1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb0/a1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ly1/x;Ly8/c;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lb0/a1;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lb0/y1;

    iget-object v1, p0, Lb0/a1;->b:Ljava/lang/Object;

    check-cast v1, Lm0/b1;

    iget-object p0, p0, Lb0/a1;->c:Ljava/lang/Object;

    check-cast p0, Lm0/f0;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, p0, v2, v3}, Lb0/y1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {p1, v0, p2}, Ly4/s;->e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_0
    return-object p0

    :pswitch_0
    new-instance v0, Lb0/z0;

    iget-object v1, p0, Lb0/a1;->b:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lb0/c2;

    iget-object p0, p0, Lb0/a1;->c:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lm0/v1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, p2}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
