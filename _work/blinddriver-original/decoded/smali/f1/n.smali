.class public final Lf1/n;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final l:Lf1/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf1/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj9/o;-><init>(I)V

    sput-object v0, Lf1/n;->l:Lf1/n;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lf1/p;

    instance-of p0, p1, Lf1/m;

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
