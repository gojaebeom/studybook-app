<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<header class="header">
		<nav class="nav">
			<figure class="logo">
				<a data-href="/">STUDY BOOK</a>
			</figure>
			<ul class="menu main-menu">
				<li class="menu-item">
					<a data-href="/">
						<span class="icon-wrap"><i class="ri-home-2-fill home-icon"></i></span>
						<span class="text-wrap home-span">홈</span>
					</a>
				</li>
				<li class="menu-item">
					<a data-href="/works">
						<span class="icon-wrap"><i class="ri-palette-fill work-icon"></i></span>
						<span class="text-wrap work-span">작품</span>
					</a>
				</li>
				<li class="menu-item">
					<a data-href="/tags">
						<span class="icon-wrap"><i class="ri-hashtag tag-icon"></i></span>
						<span class="text-wrap tag-span">태그</span>
					</a>
				</li>
				<li class="menu-item">
					<a>
						<span class="icon-wrap"><i class="ri-search-eye-fill"></i></span>
						<span class="text-wrap">검색</span>
					</a>
				</li>
			</ul>
			
			<c:choose>
				<c:when test="${not empty sessionScope.login}">
					<ul class="menu login-menu">
						<li class="menu-item">
							<div class="menu-profile-wrap">
								<div class="img-wrap">
									<img class="login-img" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxISEhUQEhMVFhUVFRUVFRcVFxcVFRcXFRUWFhcXFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQGy0lICYtLS0vLS0tLS0tLSstLS4tLy0tLS0tLS0tLS0tKy4uLS0tLS8tLS0tLS0tLS0tLS0tLf/AABEIAUIAnAMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAADAAECBAUGB//EAEEQAAEDAQQHBQYDBgYDAQAAAAEAAhEDBBIhMQUTQVFhcZEigaGxwQYUMlLR4UKS8BVicqKy0jNDU4LC8SNjkwf/xAAaAQADAQEBAQAAAAAAAAAAAAAAAQIDBAUG/8QAMBEAAgICAAUCBQIGAwAAAAAAAAECEQMSBBMhMUFRkXGBobHBBSIUMmHh8PEjQtH/2gAMAwEAAhEDEQA/APN2mNgOBGOOe3mowpwmheieUQhKFKEoQBGElKEoQMhCUKcJQgCJGOGXXxTQpwnhADVKd0lpjAxgQ4dzhgRxCYNUoUyBCBWChKFOEoQBEBPClCcBAEITwpgJ4QIhCUKcJ7qYrIXUrqJdSfjjv3AAdwGSYWCISIRXQSTEAzgJgbgJnBRuoHZCEoRIShFBYOE8KcJQgLB3UoRXSc8chjwEDwACdog4ieG/ogLBXUrqJCUICyF1Pc27/REfTIMEEHcRB35FNdQKyF1PdUwFKEBYO6psZJiQOJmPAJ4UgECsgGp7qmGp7qKFYKErqNdSupisDCfGI2ZxxRbqQGP1y5IHYGEoRbqQagdgoShGupXUgsFdSuo11K6gLA3U9xGupXUwBtp/opXEWE4agVggxK4jBqldQKwIYnDEa4nDUCsFcUhS5dQiXU91AWCuJrqPdTXU6EBupXUYsTXUUMFdSuo11K6ihgbicNRbqe6igsDcSuI11SuooLAXFI08AZ34Y4I0JBiKFYG6nDUa4nuIoAV1PdRgxOGIoQENUg1GFNPcTomwN1K6rIp80RzJxMnLM7hA8E1ElzSKurTXFe1KiaSQ7KZZOJTatXDSS1aB2VNWmuK5q0tUgdlS4nuK1qlIUkBZTuJ7qt6pS1KAsphiI2irQopxQQhNlfVDj4Jw0blZFEKQphMiyqGcE+r4eCtCmpapDaEVBSUwxWRTUhTS2EypcSuK3q0tWixDmkmNJarmg/hHdI9UI0VGw0zN1SWqWm1hGRI5KbajhuPNoRsVbMjVJ9UtV5BzY3ukeRQnUhsEJbDM/VKTKI2mO6fVXNSlqkbDBMsIOVRnfeb5hEdoh+Yuu5H6wpalIUeCNhUwDrC8ZtI5jDrkoCirgplPqkbDKeqTikrgpKQpJbCKYpJxSVwUlIUkbCop6pSFJWxSU9UjYTRSFNPq1d1IS1KNiSzqVE0VfNNNqVnuWoGcaKbULQNJNqUtjRRM/UJjRV80TwUTSO4IsrUpalLUq8KR3JxQ5osepQ1KcUlfFBSFFS5D0M/UqQorQ1KcUUtx6FAUU+pV8UU4oo3FoZ4YN46pXBvHULR1A2hMbI0/hHl5JqaE4FC63eOoTw3eFbdYG7B4n7oJsHB3cWn0VqUX5JcGBIG+O4qEj5/BXGaPb++Oin+zx8z+v2T3iToy3KeAqLLQdoRRWCyZ0qBZuhLVoIcEQVCpaNFjH1SWqUhWO4J9dwCh2WsZHVJxSUtdwCfWncEuo+WR1SfVJ9aU4qn9BLqVyhhRUtUlrTvS1p3+SOocofVJGkdgHeY9FEvd8x6N+ia+75z0b9EUw5QnB4/ADycPUITqjx/lO7jPkEbWP+bqB6QpttDtt08gR6p2LlFF1tIzpkcyR6KP7S/c/m+y0DaXbIHj6hCqPccxTPNh+pVJr0+pLxMqN0kNrD3H7Ig0hT3O6D6pjP8Ap0vyoWvI/wAtn5FXQjlMEKaK1iKGKQYsnM7VhA6tEZZyRIx4A4ogYjUnFuSjc0WECyi8ZsJ7j5hWqdmDtjmnirNnrA4HAq0GqHkY+UZxsG53UJCwO3jxWmGpw1TzWVyzLNgdsI8UN1kqD8PQgraup7qOax8s591NwzBHMQoAroiDsA7zHohONXYGdSfonzh6GHjuThaz22g5R3R6qu+yVD8RaOZb9E1lHyygmV73Zu2ozuE+SdtnpbanhHonzULlmeSU14o9YNB7MkbzghE8FSyIOUQvJrycu4KN7gnuTyS0GKQYg0rUC5zflIHVgd/yhWRVHguR5KPQWAa6pBilScD3CUVgkAqeYPlUCDFbo1/mlQDFIU+CncOWgvvHApe8HY1Kk0bQilrP1KNiHGKAGu7gO4pjaHf9D6qwLu5MQ07I5J2FL0KznuP4j1+iTCfnd3fcoxpjeeiY00tiqiCfTBGbzzIVf3fgeit6tNq09hqKKj7ORmIUDSV0s4KJHBG49UU9VwS1aK+uAY3fZANp7PGAPBHML5LYxpIbacgHDET1Q9cY5gDoq76mychCpTK/h2c7YtIlutnOpJncYf6lvRblg0gxxqGdpcJ+UNYPOVyVWoGgE7TH66I9N+cHgfA+gXRkxxl1JxxnHomd1TiARtHgQj0XwRuXPWHS5uXSMWw0cRddj1A6rdpPBAO8A9xXnzTg+p0Pqupdo1gcNv8A3kjyqDHYxtEHz+hRHPKjcwlDqXJU2OhURUMzy8Ec1cR49EbkSgXhBUmUgdiq03zirFKsqU15OeUWuwR9OMkMg71KpVwVarVw8E5TXgIxbHed6FUqAZ/rL6oTqpiEGo4kpbnRHGTfWwI5xyKg+rJkb1GE0GYjDf8AZGxskkDc1VqjccNyPrJLhuMeAPqhvqAOawnF0x/tElVE1jJLqyvcKgWK7dTEKkzTY8t0/WLadOM5afAH1RDauzVcMPgI73Y+CoaYqm5TnYQTxi6PQoj3ABwzvBg5RBPlHevTjD9q+P5POyZayzp+F9Ys6az1AXOHykA97QR5rWsNtMtdMgf07PBc7YHdmu+cA2cMwAwx4AdFoezzjqKRPygH/b2fRcGaPRv4L6HrY5Rm1H1Tfs6OnpWoa125wYG9QP8Ameiv0Kl4Nd8wB74n0KxLM0Eco8h6yjaJtt+Y+FlRzfykg8viPguKUXVmWaEU6Xf/AMNtwgTE8AphqFZqwN7qOUfYq3dWDlRxytdGQa2MlJuClCZTuRZO/hxQXBFCYhPcS6AC1RuKxdTXU1kK2AXUzlYLVAsVLIUpHL6MtTxXtzqgIpscxzcCBDaIvEE54NactoiQQTm2XSorVNHVXfE+nUL4OTnN1Zw/ja4Ix0oKY0v2u3TdfGM/HQZSYOYLADuK5HRVubesZMnU3GOxiA2s4tiNzSCvYwYttnXiveH9zzcvEVUb837S/semPtbRXFn/ABGmancHBvqeiMwh2Ixgkd4MHxCwa9sH7XbTw/wNXxvGavkB1Vaxe1F11ZmqeS20VgbrHPGDzElowMRgud4pUtV4T97OyHFxTez8te1HAabb8O4AZxjich9UehT7In69DuVfS1M3r2MCACdvBo3cVestPsjGWxIORjcV7TVQR5altnmy5Qq3KVYETepFveSAD4ldF7INmyt4OeP5ifXxXMVKrDSdBaSQBEj5hs5BdN7GPb7s5u2+/wDpbl3QuHio1ib/AK/g9Thct8TFJ/8AX8m6GQs72etQdfhoE2h7b0XS4AGOzm2Ia0cBvkDRrPAdGOI2TOzKMZxXM+y8ax8dl2uM0wey0SALrRu7QnbAXBGO2Ob+B25ZPnY4+u32O3pt8R5iPVXbFVnPcB0J+qqM2cFOlhh+tq4JK0RNbJlyz1A4u4OA/kYfVGuqjYXxf/iH9LVfnBYTVM58ipiupw1QBMooKmzNkbiYtU3FDeUWCsaFk6d0g6lqmU2y+s91NuN2DqqjgbxBAxa3Yc8lrwuF/wD0i0vFWyUmTJc93xFgl0UwC9pBAhz8jMLq4THzcqj8fszPPk0g38PucFWpat9rpu1dQgCXMe/B19o7LjjUaHOhwdMloMkgSGyERjMA43YBjbGGeeaZ1npsNam5xL2ECmWAatxa+HjHFojEHD4SCMcFZhmvroLp7fZHhX+6jr7bamt0wHACNbTZJxm+xrb2OUXh+ULjrTaXNq1gC4f+ar+JzT8Z+ITn9FpUbWPeKdV4kNfRLsTJ1dwEzv7Mrn61Uuc5ziXFznOLt5cSSe9Z4sOtJ+IpexWTK+vxbNDSQcXm93ZZHEYAmNmeKhecWhs4DZ9d6M9smVIUl0LokjknlblJryVgxdR7G20B2pcYLjLdx7MRzw7/ADwRTUms2jAjEEYEEZEFZ5saywcWbcLxUuHyrJHwd77QVS1hdj8Jm7EjCMCTh0PIrH9kS2DTcJLX32y2QJABh2w9lX9HaRFopdsAvaAHgSCf3hGInHLLFR0BZnMvOgDFwGw5wQ4Z4RhMrxl/x4p45d7PpZZVlz4csHcafy/z7nZki8QCDAJOOXPcjMZMcRK5jVmb0md+3HitOzaRcLocAYyPDDPovMnjfg63H0NOhTxef3h/S1XGrOoWyJJE3jOHIDDorjLYzj0WE4sxyRl6Fi6nuofvbePRCtNs2NI4lZ6SZioSbqi05qiWrn7TbTMtJn5tvcs/3hwdrJN4YyTj3k7FqsDfk6P4fp1Zt6d0maBowJ1lRzSN4FKo7PZ2gxea+3NrqVKrHOJwaS2MA2Xfh6Djkt72r0uaz6AAu3C8yDMl10YYYbeq5TTBLn4ySABjjx9V7X6dw+jjNrrT+7PK4zKlhnB97X4Zhsp4xtVqg3FRDJJk45z5o1BjiYbnvXtt9DxYP9yB1CBiVlQtmpQIBOZgrLuqoNMWRu+pabayXXZnpmr1mfeMGOCwaVsjZ48Mzv3q3S0iM7p6puJi4s3RR4J9SucaNy0mWh2d49SpcGRVG1YarqTxUbmMxvG0H9bl2Wjbr2X25Oc85Y4vOfFcIzSDIxmdoA8loaK0+achpgEzDoid4K8/i+Flljce538Bx3IlU/5fsztdUn1SxKXtGDtZ1+6sUdLOnGCDsy6FeTLhcq7o9yP6lhfZm1RbiG7JA6laVnsrLpdic8z8pI2LCs2lmBwL2kAEEwQVare09BjS1ge/PGA0Ymczj4LOPD5G+xpk43Gl/MO97jhJjdJjogGmser7Qu/DTA5kn0Cp1dOVTuHLBaR4LK+5Ev1XAuzv5G9UeOKybdasYCx7Rpc7TPfKoVNKnZHQ/VduHgJLqzjzfqqkqRftj8QScvqsu1VLziWjPaeSC+0ziTKf3sbh4r0YYXE8nJxG7YNtHHtfqd6IKoaZCibRM8Y8EKpUG0rXVvuZqddh7RXJBG9Z0I76w2IBK1jGuxDk2Z1xIIgYTkFJ1Iqy9iLapCMy0dyBdOUKbqSol0HbW2o7bXwWelfTpE6mqy0grU0ZVrNc11ItMnAF1NzSZDcWuMTLm57wuXa8qYdv7lMoKSoEqdnpPvmkKjAHWSm9kz2RcMiQQdXUEEGRBGB2K3Z6F4APsFoadpp1GuHMXivPtH6dtNAh1Oo7MktJJaThMg74HRevWDSbXMZUacHtDhgMiJzXj8XiniS1iuvpsvzR6nDcrLbk3f8AXV/WrM3SXs0BTvUL5echUcGgcxck8sOa5up7KWt2JNM8L58oXcVrcSga4rnw5eJgvHzOifDcLJ2+nwOEr+y9rb/lh38DmnwJBWPXpuYS1wLXAwQcCDxC9SdWWJpLQtGqS4tLXEklzMCScSSMiu/Bxc26yr2/2cfEcFiSvFL3/wBHBOcq9SsV1lq9lW/grQf/AGNw6t+i5rSGjK1KS+m4Afigln5hgu+GXHLszz3hnHuikbSRkoGu4oNSoAUZkHEKmFUQdUcpCqVPBQfaA0wlYd+yA06kKwKypSkXpGjhZd1ir1qxmAg6wqLnQlY446Caw7098qvrSlfO9Fl6mjYnU7wFS8BwIA78F0lksFnwcGB20EkuB8YXK2W2sb8dBr+N+o0+Do8F0mjNNUizV02tZjN0kkydxcTKG2+iMckXHqjZZZqeylS/+bD4kStqy219wNvGG4ATgBswXNNtRGEKbbY5S8Kfg5Xmyep03vZTOtRWCy2RiZjgYWdpKu2uLpfWYIMtaQQ6fm+inlJPsEMmSXk2tIe1dGjgXX3fKztHvOQ6yuW0l7Z2iphTik393tOPNxHkAq50PR/1an5G/wByC/R1EGNY/wDK3+7l1VKEV4OqMkvNm5oj2qvAMrnHZUyB/jAy5jDlmlb/AGmawxRJcQSCY7OGG3NYhsFFmLqriNwaAesnyWWCmscX4GlbtMsWyrrHueRExgMMAABltwx4oV/CBkhlMrpF16ky9N7yOPkpUmA8eGXihPp4/o+STT8AqfQiKvBPfQg5WqWr58zHgpVlul4Ce7GAWlpnmI8PVJ2jzAN9k7R2vAgYqyx+CRV6mO7KjbAfmZ1d/ak7R79l0gQJBgSZ+aDsOxWwptP6gFGocxlSno0n4nsb3l3eLoKL+y2f6w/I5FTgp6kucvU0LDaGtaKbnFxGAdESNkiTl3K53rHaRvPQfVGFowiZ7laOecLdouur7EEvQHVmxLnQBwCzq2lmgw1sjecOgxSbS7jhjb7I0q9qDRJHLiVivrOJvE4odrthqEYRGQCrY71DkdePFS69y055OZJ/X3UZQLx3p9aVNmmoaUpQdbwS1vBFhqw8ppQdbwS1iVj1IJKQoO+V3QolOxVDkx3SPNFFOUV3Zc0fSqHIAt4OZI7p8FcrMAMFwnbn9Fmt0VVOYA5ub6FW7LYy3/EdTLf4zI5GFpGzkyON2pL4IlfCfWN3Hr9lO0UqAm48nDeM4E5A4SqF9XYorYtEhIFVb/E9yWHzHvH3SsrUtBxG1Fp2qD2nDdjPjCzUiiweNPuXbRY2VDeNobyLQAO68hv0UCcK1MknIYY8hkqsJrqj5FKMl2l9EEdox03b7J3S7+2E7NGP3tHU+QQxIy8FJ1V5zc495RSKufqXG6KYBLqo5ACfE+iHXoWcCA55M5xl5CFVk7yowj5EqMrtyJssd7BpHfPTLNK0WIsAcXNOwgTIPGVEFTDpa5oBM44ThG2AY6hKkXcr7lYgJoUSUpUmtF73h+1zjzc76qb7c8xjliMJ3bTJ2KsmWhjpH0D1bU50ScjO7yQi5RSQNJLsPeSvJgU947z1SsY95K8okpSiwoKwt2k9wHnKlLf3p7oQQ7gE5I3R1TsVEiRsTXlBOnYUSvJXkyUoAeUkkyAEVGnVLTLTB4JnFDJUMpKwlWrezJJnNxJUm2QETrGdQPAkFCdVJMnHnihvqEYYYcBzUtoai6pdCwkkktCRApwmSSAd6ikkgaEmTpJAMnTpIAQSSSTQhJBJJMBBIpJIAi5DKSShloihFJJQy4n/2Q==" alt="profile image">
								</div>
							</div>
							<div class="menu-profile-dropbox">
								<a data-href="/" class="dropbox-item">
									<i class="ri-profile-fill"></i>
									<span>내 블로그</span>
								</a>
								<hr>
								<a data-href="/posts/create" class="dropbox-item">
									<i class="ri-pencil-ruler-fill"></i>
									<span>글 쓰기</span>
								</a>
								<hr>
								<a href="/logout" class="dropbox-item">
									<i class="ri-logout-circle-fill"></i>
									<span>로그아웃</span>
								</a>
							</div>
						</li>
					</ul>
				</c:when>
				<c:otherwise>
					<ul class="menu logout-menu">
						<li class="menu-item">
							<a data-href="/login">
								<span class="icon-wrap"><i class="ri-login-circle-fill login-icon"></i></span>
								<span class="text-wrap login-span">로그인</span>
							</a>
						</li>
					</ul>
				</c:otherwise>
			</c:choose>
		</nav>
	</header>