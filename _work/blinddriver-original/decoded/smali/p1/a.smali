.class public final Lp1/a;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final l:Lp1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp1/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj9/o;-><init>(I)V

    sput-object v0, Lp1/a;->l:Lp1/a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lo1/d;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
