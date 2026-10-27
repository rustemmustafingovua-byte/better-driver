.class public abstract Lq3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final n:Landroid/view/View$AccessibilityDelegate;


# instance fields
.field public final l:Landroid/view/View$AccessibilityDelegate;

.field public final m:Lq3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/View$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    sput-object v0, Lq3/b;->n:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lq3/b;->n:Landroid/view/View$AccessibilityDelegate;

    iput-object v0, p0, Lq3/b;->l:Landroid/view/View$AccessibilityDelegate;

    new-instance v0, Lq3/a;

    invoke-direct {v0, p0}, Lq3/a;-><init>(Lq3/b;)V

    iput-object v0, p0, Lq3/b;->m:Lq3/a;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lq3/k;
    .locals 1

    iget-object p0, p0, Lq3/b;->l:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p0, p1}, Landroid/view/View$AccessibilityDelegate;->getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lq3/k;

    const/4 v0, 0x6

    invoke-direct {p1, v0, p0}, Lq3/k;-><init>(ILjava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public b(Landroid/view/View;Lr3/g;)V
    .locals 0

    iget-object p0, p0, Lq3/b;->l:Landroid/view/View$AccessibilityDelegate;

    iget-object p2, p2, Lr3/g;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method
