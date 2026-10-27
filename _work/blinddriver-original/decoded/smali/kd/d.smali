.class public final Lkd/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lu9/g;


# direct methods
.method public synthetic constructor <init>(Lu9/g;I)V
    .locals 0

    iput p2, p0, Lkd/d;->l:I

    iput-object p1, p0, Lkd/d;->m:Lu9/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkd/d;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lkd/d;->m:Lu9/g;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    iget-object p0, p0, Lkd/d;->m:Lu9/g;

    invoke-virtual {p0}, Lu9/g;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
