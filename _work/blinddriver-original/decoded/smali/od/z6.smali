.class public final synthetic Lod/z6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/b1;


# direct methods
.method public synthetic constructor <init>(Lr0/b1;I)V
    .locals 0

    iput p2, p0, Lod/z6;->l:I

    iput-object p1, p0, Lod/z6;->m:Lr0/b1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/z6;->l:I

    iget-object p0, p0, Lod/z6;->m:Lr0/b1;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lr0/b1;->h(I)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lr0/b1;->g()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lr0/b1;->h(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
