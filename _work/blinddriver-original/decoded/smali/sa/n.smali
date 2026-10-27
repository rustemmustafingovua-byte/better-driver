.class public abstract Lsa/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsa/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsa/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lsa/n;->a:Lsa/m;

    return-void
.end method


# virtual methods
.method public a(Lsa/p;Lsa/b0;)V
    .locals 0

    const-string p0, "settings"

    invoke-static {p2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(Lsa/x;)V
.end method
