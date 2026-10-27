.class public final Ll2/b;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final m:Ll2/b;

.field public static final n:Ll2/b;

.field public static final o:Ll2/b;


# instance fields
.field public final synthetic l:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Ll2/b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ll2/b;-><init>(II)V

    sput-object v0, Ll2/b;->m:Ll2/b;

    new-instance v0, Ll2/b;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ll2/b;-><init>(II)V

    sput-object v0, Ll2/b;->n:Ll2/b;

    new-instance v0, Ll2/b;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ll2/b;-><init>(II)V

    sput-object v0, Ll2/b;->o:Ll2/b;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Ll2/b;->l:I

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Ll2/b;->l:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ll2/h;

    iget-object p0, p1, Ll2/h;->c:Lb3/k;

    invoke-virtual {p0}, Lb3/k;->b()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ll2/h;

    iget p0, p1, Ll2/h;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
