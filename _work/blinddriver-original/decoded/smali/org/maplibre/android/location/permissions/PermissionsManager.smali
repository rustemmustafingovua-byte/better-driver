.class public Lorg/maplibre/android/location/permissions/PermissionsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BACKGROUND_LOCATION_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_BACKGROUND_LOCATION"

.field private static final COARSE_LOCATION_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final FINE_LOCATION_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final LOG_TAG:Ljava/lang/String; = "PermissionsManager"


# instance fields
.field private final REQUEST_PERMISSIONS_CODE:I

.field private listener:Lorg/maplibre/android/location/permissions/PermissionsListener;


# direct methods
.method public constructor <init>(Lorg/maplibre/android/location/permissions/PermissionsListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/maplibre/android/location/permissions/PermissionsManager;->REQUEST_PERMISSIONS_CODE:I

    iput-object p1, p0, Lorg/maplibre/android/location/permissions/PermissionsManager;->listener:Lorg/maplibre/android/location/permissions/PermissionsListener;

    return-void
.end method

.method public static areLocationPermissionsGranted(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lorg/maplibre/android/location/permissions/PermissionsManager;->isCoarseLocationPermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lorg/maplibre/android/location/permissions/PermissionsManager;->isFineLocationPermissionGranted(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static areRuntimePermissionsRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isBackgroundLocationPermissionGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p0, v0}, Lorg/maplibre/android/location/permissions/PermissionsManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isCoarseLocationPermissionGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Lorg/maplibre/android/location/permissions/PermissionsManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isFineLocationPermissionGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Lorg/maplibre/android/location/permissions/PermissionsManager;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Ll7/a;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private requestLocationPermissions(Landroid/app/Activity;ZZ)V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 14
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p3, :cond_1

    .line 16
    const-string p2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/maplibre/android/location/permissions/PermissionsManager;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void
.end method

.method private requestPermissions(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p2, v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-ge v5, v6, :cond_0

    const-string v6, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    const/16 v6, 0x20

    if-lt v5, v6, :cond_1

    invoke-virtual {p1, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    :cond_1
    const/16 v6, 0x1f

    if-ne v5, v6, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-class v6, Landroid/content/pm/PackageManager;

    const-string v7, "shouldShowRequestPermissionRationale"

    const-class v8, Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-virtual {p1, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/maplibre/android/location/permissions/PermissionsManager;->listener:Lorg/maplibre/android/location/permissions/PermissionsListener;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    iget-object p0, p0, Lorg/maplibre/android/location/permissions/PermissionsManager;->listener:Lorg/maplibre/android/location/permissions/PermissionsListener;

    invoke-interface {p0, v0}, Lorg/maplibre/android/location/permissions/PermissionsListener;->onExplanationNeeded(Ljava/util/List;)V

    :cond_5
    invoke-static {p1, p2, v2}, Ll7/a;->x(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getListener()Lorg/maplibre/android/location/permissions/PermissionsListener;
    .locals 0

    iget-object p0, p0, Lorg/maplibre/android/location/permissions/PermissionsManager;->listener:Lorg/maplibre/android/location/permissions/PermissionsListener;

    return-object p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/maplibre/android/location/permissions/PermissionsManager;->listener:Lorg/maplibre/android/location/permissions/PermissionsListener;

    if-eqz p0, :cond_2

    array-length p1, p3

    const/4 p2, 0x0

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    invoke-interface {p0, p2}, Lorg/maplibre/android/location/permissions/PermissionsListener;->onPermissionResult(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public requestLocationPermissions(Landroid/app/Activity;)V
    .locals 5

    .line 1
    const-string v0, "PermissionsManager"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 4
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 7
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 8
    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 9
    invoke-direct {p0, p1, v2, v1}, Lorg/maplibre/android/location/permissions/PermissionsManager;->requestLocationPermissions(Landroid/app/Activity;ZZ)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, p1, v2, v1}, Lorg/maplibre/android/location/permissions/PermissionsManager;->requestLocationPermissions(Landroid/app/Activity;ZZ)V

    return-void

    .line 11
    :cond_1
    const-string p0, "Location permissions are missing"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setListener(Lorg/maplibre/android/location/permissions/PermissionsListener;)V
    .locals 0

    iput-object p1, p0, Lorg/maplibre/android/location/permissions/PermissionsManager;->listener:Lorg/maplibre/android/location/permissions/PermissionsListener;

    return-void
.end method
