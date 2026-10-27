.class public final Lk1/r;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final m:Lk1/r;

.field public static final n:Lk1/r;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lk1/r;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk1/r;-><init>(II)V

    sput-object v0, Lk1/r;->m:Lk1/r;

    new-instance v0, Lk1/r;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lk1/r;-><init>(II)V

    sput-object v0, Lk1/r;->n:Lk1/r;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lk1/r;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lk1/r;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lk1/a;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Lk1/a;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
