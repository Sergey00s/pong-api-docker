



up:
	docker compose -f docker-compose.yml up


down:
	docker compose -f docker-compose.yml down


clean:
	docker compose -f docker-compose.yml down --rmi all --volumes --remove-orphans

fclean: clean
	docker system prune -a --force
	docker volume prune --force
	docker network prune --force
	docker image prune --force
	docker container prune --force
	docker builder prune --force


