.class public final synthetic Lq9/m;
.super Lj9/l;
.source "SourceFile"

# interfaces
.implements Li9/c;


# static fields
.field public static final s:Lq9/m;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lq9/m;

    const-string v4, "iterator()Ljava/util/Iterator;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lq9/h;

    const-string v3, "iterator"

    invoke-direct/range {v0 .. v5}, Lj9/l;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lq9/m;->s:Lq9/m;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq9/h;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
