.class public abstract Lmb/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/k3;


# static fields
.field public static final b:Lmb/l3;


# instance fields
.field public final a:Lhb/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmb/l3;

    sget-object v1, Lhb/c;->o:Lhb/c;

    invoke-direct {v0, v1}, Lmb/m3;-><init>(Lhb/c;)V

    sput-object v0, Lmb/m3;->b:Lmb/l3;

    return-void
.end method

.method public constructor <init>(Lhb/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/m3;->a:Lhb/c;

    return-void
.end method


# virtual methods
.method public final getLocation()Lhb/c;
    .locals 0

    iget-object p0, p0, Lmb/m3;->a:Lhb/c;

    return-object p0
.end method
