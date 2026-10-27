.class public final synthetic Lk0/q;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final s:Lk0/q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lk0/q;

    const-string v4, "<init>(Landroid/view/View;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lk0/l;

    const-string v3, "<init>"

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lk0/q;->s:Lk0/q;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    new-instance p0, Lk0/l;

    invoke-direct {p0, p1}, Lk0/l;-><init>(Landroid/view/View;)V

    return-object p0
.end method
