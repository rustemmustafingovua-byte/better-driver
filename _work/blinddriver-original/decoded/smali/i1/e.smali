.class public final Li1/e;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lj9/u;


# direct methods
.method public constructor <init>(Lb0/l1;Li1/f;Lj9/u;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Li1/e;->l:I

    .line 1
    iput-object p3, p0, Li1/e;->m:Lj9/u;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lj9/u;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Li1/e;->l:I

    .line 2
    iput-object p1, p0, Li1/e;->m:Lj9/u;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Li1/e;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ly1/f;

    iget-boolean p1, p1, Ly1/f;->B:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Li1/e;->m:Lj9/u;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj9/u;->l:Z

    sget-object p0, Le2/d2;->n:Le2/d2;

    goto :goto_0

    :cond_0
    sget-object p0, Le2/d2;->l:Le2/d2;

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p1, Li1/f;

    iget-boolean v0, p1, Lf1/q;->y:Z

    if-nez v0, :cond_1

    sget-object p0, Le2/d2;->m:Le2/d2;

    goto :goto_2

    :cond_1
    iget-object v0, p1, Li1/f;->A:Li1/f;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "DragAndDropTarget self reference must be null at the start of a drag and drop session"

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p1, Li1/f;->A:Li1/f;

    iget-object p0, p0, Li1/e;->m:Lj9/u;

    iget-boolean p1, p0, Lj9/u;->l:Z

    iput-boolean p1, p0, Lj9/u;->l:Z

    sget-object p0, Le2/d2;->l:Le2/d2;

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
