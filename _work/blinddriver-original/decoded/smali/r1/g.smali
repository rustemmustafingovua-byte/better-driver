.class public final Lr1/g;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/a;


# static fields
.field public static final m:Lr1/g;

.field public static final n:Lr1/g;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lr1/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lr1/g;-><init>(II)V

    sput-object v0, Lr1/g;->m:Lr1/g;

    new-instance v0, Lr1/g;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lr1/g;-><init>(II)V

    sput-object v0, Lr1/g;->n:Lr1/g;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lr1/g;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lr1/g;->l:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    new-instance p0, Lm1/h;

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    invoke-direct {p0, v0}, Lm1/h;-><init>(Landroid/graphics/PathMeasure;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
