.class public final Lf3/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf3/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lf3/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf3/m;->a:Lf3/m;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    const/4 p0, 0x3

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-void
.end method
