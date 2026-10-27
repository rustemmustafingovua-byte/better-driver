.class public final Lf9/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/h;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lf9/h;->a:I

    sget-object v0, Lf9/i;->l:Lf9/i;

    const-string v1, "start"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lf9/h;->b:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lf9/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Li9/e;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lf9/h;->a:I

    const-string v0, "input"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lf9/h;->b:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lf9/h;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Li9/c;I)V
    .locals 0

    .line 1
    iput p3, p0, Lf9/h;->a:I

    iput-object p1, p0, Lf9/h;->b:Ljava/lang/Object;

    iput-object p2, p0, Lf9/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lf9/h;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lr0/p2;

    invoke-direct {v0, p0}, Lr0/p2;-><init>(Lf9/h;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lk/k0;

    invoke-direct {v0, p0}, Lk/k0;-><init>(Lf9/h;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lq9/f;

    invoke-direct {v0, p0}, Lq9/f;-><init>(Lf9/h;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lf9/f;

    invoke-direct {v0, p0}, Lf9/f;-><init>(Lf9/h;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
